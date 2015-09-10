//
// Created by Dani Postigo on 9/10/15.
//

import Foundation
import AYSwift


public class AYSearchResultsViewController: UITableViewController, AYSearchDisplayDelegate {

    let sources: [AYSource] = []
    public var source: AYSource {
        return self.sources.first!
    }

    public var searchString: String = ""

    // MARK: AYSearchDisplayDelegate

    public func searchDisplay(searchString: String, didFindResults results: [String]) {
        self.searchString = searchString
        self.tableView.reloadData()
    }

    public func searchDisplayDidEnd() {

    }

    // MARK: UITableViewDelegate
    public override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.source.count

    }

    public override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let ret: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("TableCell", forIndexPath: indexPath) as! UITableViewCell

        if let string = self.source[indexPath.row] as? String,
        aString = string as? NSString {

            ret.textLabel?.text = aString as String

            if let label = ret.textLabel {

                let range: NSRange = aString.rangeOfString(self.searchString, options: NSStringCompareOptions.LiteralSearch)

                let attributedString = NSMutableAttributedString(string: string, attributes: [
                        NSFontAttributeName: label.font
                ])

                attributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor() as AnyObject, range: range)
                label.attributedText = attributedString
            }
        }

        return ret
    }


}
