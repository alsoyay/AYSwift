//
// Created by Daniela Postigo on 9/8/15.
//

import Foundation

extension UIBezierPath {

    public class func hamburger(size:CGSize) -> UIBezierPath {

        let path = UIBezierPath()
        path.moveToPoint(CGPointMake(0, 1))
        path.addLineToPoint(CGPointMake(size.width, 1))
        path.addLineToPoint(CGPointMake(size.width, 0))
        path.addLineToPoint(CGPointMake(0, 0))
        path.addLineToPoint(CGPointMake(0, 1))
        path.closePath()
        
        path.moveToPoint(CGPointMake(0, 3))
        path.addLineToPoint(CGPointMake(size.width, 3))
        path.addLineToPoint(CGPointMake(size.width, 2))
        path.addLineToPoint(CGPointMake(0, 2))
        path.addLineToPoint(CGPointMake(0, 3))
        path.closePath()
        
        path.moveToPoint(CGPointMake(0, 5))
        path.addLineToPoint(CGPointMake(size.width, 5))
        path.addLineToPoint(CGPointMake(size.width, 4))
        path.addLineToPoint(CGPointMake(0, 4))
        path.addLineToPoint(CGPointMake(0, 5))
        path.closePath()

        return path
   
    }
}