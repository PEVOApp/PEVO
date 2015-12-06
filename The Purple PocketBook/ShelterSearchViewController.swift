//
//  ShelterSearchViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 12/3/15.
//  Copyright © 2015 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class ShelterSearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchResultsUpdating, UISearchBarDelegate, SearchControllerDelegate {
    
    @IBOutlet var shelterSearchView: UITableView!
    
    var cities:[ShelterCities] = []
    var searchResults:[ShelterCities] = []
    
    var searchController: UISearchController!
    
    
    var dataArray = [String]()
    
    var filteredArray = [String]()
    
    var shouldShowSearchResults = false
    
    var shelterSearchController: ShelterSearchController!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        configureSearchController()
        
        loadListShelterSearch()
        
        configureCustomSearchController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Custom functions
    
    func loadListShelterSearch() {
        // Specify the path to the countries list file.
        let pathToFile = NSBundle.mainBundle().pathForResource("ShelterSearch", ofType: "plist")
        
        if let path = pathToFile {
            // Load the file contents as a string.
            let countriesString = try! String(contentsOfFile: path, encoding: NSUTF8StringEncoding)
            
            // Append the countries from the string to the dataArray array by breaking them using the line change character.
            dataArray = countriesString.componentsSeparatedByString("\n")
            
            // Reload the tableview.
            shelterSearchView.reloadData()
        }
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if shouldShowSearchResults {
            return filteredArray.count
        }
        else {
            return dataArray.count
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ShelterSearchTableViewCell
        
        // Configure the cell...
        let city = (searchController.active) ? searchResults[indexPath.row] : cities[indexPath.row]
        
        cell.cityLabel!.text = city.cityName
        cell.shelterLabel!.text = city.shelterName

        
        return cell    }
    
    func configureSearchController() {
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = true
        searchController.searchBar.placeholder = "Search here......"
        searchController.searchBar.delegate = self
        searchController.searchBar.sizeToFit()
        shelterSearchView.tableHeaderView = searchController.searchBar
        
        
    }
    
    
    func configureCustomSearchController() {
        shelterSearchController = ShelterSearchController(searchResultsController: self, searchBarFrame: CGRectMake(0.0, 0.0, shelterSearchView.frame.size.width, 50.0), searchBarFont: UIFont(name: "Futura", size: 16.0)!, searchBarTextColor: UIColor.orangeColor(), searchBarTintColor: UIColor.blackColor())
        
        shelterSearchController.shelterSearchBar.placeholder = "Search in this awesome bar..."
        shelterSearchView.tableHeaderView = shelterSearchController.shelterSearchBar
        
        shelterSearchController.shelterSearchDelegate = self

    }


    
    // MARK: UISearchBarDelegate functions
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        shouldShowSearchResults = true
        shelterSearchView.reloadData()
    }
    
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        shouldShowSearchResults = false
        shelterSearchView.reloadData()
    }
    
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        if !shouldShowSearchResults {
            shouldShowSearchResults = true
            shelterSearchView.reloadData()
        }
        
        searchController.searchBar.resignFirstResponder()
    }
    
    // MARK: UISearchResultsUpdating delegate function
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        let searchText = searchController.searchBar.text
        
        filterContentForSearchText(searchText!)
        
        shelterSearchView.reloadData()
    }
    
    func filterContentForSearchText(searchText: String) {
        
        searchResults = cities.filter({ ( city: ShelterCities) -> Bool in
            
            let nameMatch = city.cityName.rangeOfString(searchText, options: NSStringCompareOptions.CaseInsensitiveSearch)
            let locationMatch = city.shelterName.rangeOfString(searchText, options: NSStringCompareOptions.CaseInsensitiveSearch)
            
            return nameMatch != nil || locationMatch != nil
            
        })
        
    }
    
    func didStartSearching() {
        
        shouldShowSearchResults = true
        shelterSearchView.reloadData()
    }
    
    func didTapOnSearchButton() {
        
        if !shouldShowSearchResults {
            shouldShowSearchResults = true
            shelterSearchView.reloadData()
        }
   
    }
    
    func didTapOnCancelButton() {
        
        shouldShowSearchResults = false
        shelterSearchView.reloadData()

    }
    
    
    func didChangeSearchText(searchText: String) {
        // Filter the data array and get only those countries that match the search text.
        filteredArray = dataArray.filter({ (statesearch) -> Bool in
            let stateText: NSString = statesearch
            
            return (stateText.rangeOfString(searchText, options: NSStringCompareOptions.CaseInsensitiveSearch).location) != NSNotFound
        })
        
        // Reload the tableview.
        shelterSearchView.reloadData()
    }
}









