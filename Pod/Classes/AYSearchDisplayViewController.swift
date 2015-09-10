//
// Created by Daniela Postigo on 9/10/15.
//

import Foundation


protocol AYSearchDisplayDelegate {
    func searchDisplay(string:String, didFindResults results:[String])
    func searchDisplayDidEnd()
    
}

public class AYSearchDisplayViewController:UIViewController, UISearchBarDelegate {

    @IBOutlet public var searchBar:UISearchBar!
    var delegate: AYSearchDisplayDelegate?
    
    public var searchText:String {
        return self.searchBar.text
    }

    override public func viewDidLoad() {
        self.searchBar.delegate = self
    }
    
    
    public func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        if self.searchText > 1 {
            let results = []
            delegate?.searchDisplay(self.searchText, didFindResults: results)
            
        } else {
            delegate?.searchDisplayDidEnd()
        }
        
    }
}

public class AYSearchResultsViewController:UITableViewController, AYSearchDisplayDelegate {
    
    
    
    func searchDisplay(string:String, didFindResults results:[String]) {
        
    }
    
    func searchDisplayDidEnd() {
        
    }
}
