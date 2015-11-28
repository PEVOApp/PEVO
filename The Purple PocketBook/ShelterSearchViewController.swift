//
//  ShelterSearchViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 11/23/15.
//  Copyright © 2015 Alicia MacBook Pro. All rights reserved.
//

import UIKit

protocol ShelterSearchControllerDelegate {

}

class ShelterSearchViewController: UITableViewController {
    
    var searchController:UISearchController!
    var shelterCities:[Cities] = []
    var searchResults:[Cities] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        searchController = UISearchController(searchResultsController: nil)
        tableView.tableHeaderView = searchController.searchBar
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func filterContentForSearchText(searchText:String){
        searchResults = shelterCities.filter({ (city:Cities) ->
            Bool in
            let nameMatch = city.cityName.rangeOfString(searchText,
                options: NSStringCompareOptions.CaseInsensitiveSearch)
            return nameMatch != nil
        })
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
