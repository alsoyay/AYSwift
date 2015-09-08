//
// Created by Dani Postigo on 9/8/15.
//

import Foundation

public class AYSource: NSObject {

    public var index: Int = 0

    public var items: [AnyObject]


    init(index: Int, items: [AnyObject] = []) {
        self.index = index
        self.items = items
    }
}
