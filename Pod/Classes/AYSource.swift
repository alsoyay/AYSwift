//
// Created by Dani Postigo on 9/8/15.
//

import Foundation

public class AYSource: NSObject {

    public var index: Int = 0

    public var items: [AnyObject] = []

    public var count: Int {
        return self.items.count
    }


    public subscript(index: Int) -> AnyObject {
        get {
            return self.items[index]
        }
        set {
            self.items[index] = newValue
        }
    }



    public init(index: Int, items: [AnyObject] = []) {
        self.index = index
        self.items = items
    }


    public func move(item: AnyObject, destination: AYSource, index: Int) {
        let array = self.items as NSArray
        let index = array.indexOfObject(item)

        self.items.removeAtIndex(index)
        destination.items.insert(item, atIndex: index)


    }
}

