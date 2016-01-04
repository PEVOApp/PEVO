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
    
    var shelters = Array<Shelter>()
    var filteredShelters = Array<Shelter>()
	var shouldShowSearchResults = false

    var searchController: UISearchController!

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
	@IBAction private func done(sender: AnyObject) {
		dismissViewControllerAnimated(true, completion: nil)
	}


    func loadListShelterSearch() {
        // Specify the path to the countries list file.
        let path = NSBundle.mainBundle().pathForResource("ShelterSearch", ofType: "plist")!
		let allShelterValues = NSArray(contentsOfFile: path) as! Array<Dictionary<String, String>>

		shelters.removeAll()
		filteredShelters.removeAll()
		for shelterValues in allShelterValues {
			guard let shelter = try? Shelter(plistValues: shelterValues) else {
				print("Could not create a shelter from shelter values found in ShelterSearch.plist: \(shelterValues)")
				continue
			}

			shelters.append(shelter)
		}

		// Reload the tableview.
		shouldShowSearchResults = false
		shelterSearchView.reloadData()
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if shouldShowSearchResults {
            return filteredShelters.count
        }
        else {
            return shelters.count
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ShelterSearchTableViewCell
        
        // Configure the cell...
		let shelter = (searchController.active) ? filteredShelters[indexPath.row] : shelters[indexPath.row]
		cell.updateForShelter(shelter)

        return cell
	}

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
        
        filterContentForSearchText(searchText)
        
        shelterSearchView.reloadData()
    }
    
    func filterContentForSearchText(searchText: String?) {
		if let someSearchText = searchText {
			filteredShelters = shelters.filter({ ( shelter: Shelter) -> Bool in
				return shelter.cityName.containsString(someSearchText) || shelter.shelterName.containsString(someSearchText)
			})
		}
		else {
			filteredShelters = shelters
		}
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
		filterContentForSearchText(searchText)

		// Reload the tableview.
        shelterSearchView.reloadData()
    }
}
