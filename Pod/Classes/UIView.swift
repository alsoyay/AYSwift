//
// Created by Dani Postigo on 9/9/15.
//

import Foundation


extension UIView {

//    func constraintWithIdentifier(identifier: String) -> NSLayoutConstraint? {
//        for constraint in self.constraints {
//            if constraint.identifier == identifier {
//                return constraint
//            }
//        }
//        return nil
//    }

    func addDebugBorder(color: UIColor = UIColor.blackColor()) {
        self.layer.borderColor = color.CGColor
        self.layer.borderWidth = 1.0
    }

    func removeDebugBorder() {
        self.layer.borderWidth = 0.0
    }

    func removeAllSubviews() {
        for subview in self.subviews {
            subview .removeFromSuperview()
        }
    }

}

