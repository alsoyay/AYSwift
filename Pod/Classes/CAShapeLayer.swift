//
// Created by Daniela Postigo on 9/8/15.
//

import Foundation

public enum Shape: String {
    case Hamburger = "hamburger"
}

public extension CAShapeLayer {

    public class func shape(shape: Shape) -> CAShapeLayer {
        switch shape {
        case .Hamburger:
            return self.hamburger()

        default:
            return CAShapeLayer()
        }
    }



    public class func hamburger() -> CAShapeLayer {

        let ret = CAShapeLayer()
        ret.path = UIBezierPath.hamburger(CGSize(width: 40, height: 1)).CGPath
        return ret
    }
}