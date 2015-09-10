//
// Created by Daniela Postigo on 9/10/15.
//

import Foundation


public extension String {
//    var length: Int {
//        get {
//            return count(self)
//        }
//    }
}

public protocol AYSearchDisplayDelegate {
    func searchDisplay(string: String, didFindResults results: [String])

    func searchDisplayDidEnd()

}

public class AYSearchDisplayViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet public var searchBar: UISearchBar!
    var delegate: AYSearchDisplayDelegate?

    public var searchText: String {
        return self.searchBar.text! // TODO: is this unwrapping correct?
    }

    override public func viewDidLoad() {
        self.searchBar.delegate = self
    }


    public func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        if self.searchText.characters.count > 1 {
            let results: [String] = []
            delegate?.searchDisplay(self.searchText, didFindResults: results)
            showTableView()

        } else {
            hideTableView()
            delegate?.searchDisplayDidEnd()
        }
    }

    func showTableView() {

    }

    func hideTableView() {

    }
}
