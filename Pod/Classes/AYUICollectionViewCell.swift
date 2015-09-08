//
// Created by Dani Postigo on 9/8/15.
//

import Foundation

@objc(AYUICollectionViewCell) public class AYUICollectionViewCell:UICollectionViewCell {

    @IBOutlet public var textLabel:UILabel?

    @IBOutlet public var detailTextLabel:UILabel?

    @IBOutlet public var imageView:UIImageView?

    @IBOutlet public var button:UIButton?

    @IBOutlet public var customView:UIView?
}
