//
// Created by Daniela Postigo on 9/8/15.
//

import Foundation
import Brief

@IBDesignable

@objc(UILayerView) public class UILayerView: UIView {

    @IBInspectable public var shape: String = "hamburger" {
        didSet {

//            let shape = Shape(rawValue: newValue)!
            self.shapeLayer = CAShapeLayer.shape(Shape(rawValue: shape)!)
            self.layer.mask = self.shapeLayer
//            self.frame = self.shapeLayer!.bounds

//            self.setNeedsLayout()
//            self.customLayerShape = newValue
        }
    }

    public var customLayer: CALayer?
    public var shapeLayer: CAShapeLayer?

//    required public init(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        setTranslatesAutoresizingMaskIntoConstraints(false)
//    }

//    public required init(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        self.setTranslatesAutoresizingMaskIntoConstraints(false)
//    }


    public override func systemLayoutSizeFittingSize(targetSize: CGSize) -> CGSize {
        return CGSize(width: 40, height: 100)
    }

    public override func intrinsicContentSize() -> CGSize {
//        let height = self.shapeLayer?.height

        return CGSize(width: 20, height: 20)
//        return CGSize(width: 20, height: self.shapeLayer != nil ? self.shapeLayer.bounds.size.height : UIViewNoIntrinsicMetric)

    }

    public override class func requiresConstraintBasedLayout() -> Bool {
        return true
    }

    public override func layoutSubviews() {
        let path = UIBezierPath.hamburger(CGSize(width: self.frame.size.width, height: 1))
        self.shapeLayer?.path = path.CGPath
        self.shapeLayer?.height = path.bounds.size.height
//        self.shapeLayer?.frame.origin.y = path.bounds.size.height

        //       self.shapeLayer?.anchorPoint.y = self.center.y
        self.shapeLayer?.frame.origin.y = round((self.height - self.shapeLayer!.height) * 0.5)
//        self.shapeLayer?.anchorPoint.y = self.shapeLayer!.height/2
//        self.shapeLayer?.frame.origin.y = round(self.height - self.shapeLayer!.height / 2)
//
//        self.shapeLayer?.anchorPoint.y = self.shapeLayer!.path.bounds.size.height


//        self.shapeLayer?.anchorPoint.y = CGPathGetPathBoundingBox(self.shapeLayer!.path).height

//        if self.shapeLayer != nil {
//        }
    }


}