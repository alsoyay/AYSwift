//
// Created by Dani Postigo on 9/9/15.
//

import Foundation


extension UIViewController {

    public func embed(obj: AnyObject, var `in`: UIView? = nil) {

        if obj is UIViewController {
            self.embedViewController(obj as! UIViewController, containerView: `in`)
        } else if obj is UIView {
            self.view.embed(obj as! UIView)
        }
    }

    func embedViewController(vc: UIViewController, var containerView: UIView? = nil) {
        if (self.childViewControllers as NSArray).containsObject(vc) {
            return
        }

        vc .willMoveToParentViewController(self)
        self.addChildViewController(vc)
        vc .didMoveToParentViewController(self)

        containerView = containerView != nil ? containerView : self.view
        containerView!.embedView(vc.view)
    }

    @IBAction func dismiss() {
        self.navigationController?.popViewControllerAnimated(true)
    }


}

extension UIView {

    public func embed(view: UIView, insets: UIEdgeInsets = UIEdgeInsetsZero) {
        let parentView = self
        view.frame = parentView.bounds
//        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.translatesAutoresizingMaskIntoConstraints = false
        parentView .addSubview(view)
        parentView .addConstraints([
                NSLayoutConstraint(item: view, attribute: .Leading, relatedBy: .Equal, toItem: parentView, attribute: .Leading, multiplier: 1.0, constant: insets.left),
                NSLayoutConstraint(item: view, attribute: .Trailing, relatedBy: .Equal, toItem: parentView, attribute: .Trailing, multiplier: 1.0, constant: insets.right),
                NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: parentView, attribute: .Top, multiplier: 1.0, constant: insets.top),
                NSLayoutConstraint(item: view, attribute: .Bottom, relatedBy: .Equal, toItem: parentView, attribute: .Bottom, multiplier: 1.0, constant: insets.bottom)
        ])
    }

    func embedView(view: UIView!) {
        let parentView = self
        view.frame = parentView.bounds
//        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.translatesAutoresizingMaskIntoConstraints = false
        parentView .addSubview(view)
        parentView .addConstraints([
                NSLayoutConstraint(item: view, attribute: .Leading, relatedBy: .Equal, toItem: parentView, attribute: .Leading, multiplier: 1.0, constant: 0.0),
                NSLayoutConstraint(item: view, attribute: .Trailing, relatedBy: .Equal, toItem: parentView, attribute: .Trailing, multiplier: 1.0, constant: 0.0),
                NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: parentView, attribute: .Top, multiplier: 1.0, constant: 0.0),
                NSLayoutConstraint(item: view, attribute: .Bottom, relatedBy: .Equal, toItem: parentView, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        ])
    }
}