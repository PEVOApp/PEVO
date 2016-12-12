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
	@IBAction fileprivate func done(_ sender: AnyObject) {
		dismiss(animated: true, completion: nil)
	}


    func loadListShelterSearch() {
        // Specify the path to the countries list file.
        let path = Bundle.main.path(forResource: "ShelterSearch", ofType: "plist")!
		let allShelterValues = NSArray(contentsOfFile: path) as! Array<Dictionary<String, String>>

		shelters.removeAll()
		filteredShelters.removeAll()
		for shelterValues in allShelterValues {
			guard let shelter = try? Shelter(plistValues: shelterValues) else {
				print("Could not create a shelter from shelter values found in GAShelterSearch.plist: \(shelterValues)")
				continue
			}

			shelters.append(shelter)
		}

		// Reload the tableview.
		shouldShowSearchResults = false
		shelterSearchView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if shouldShowSearchResults {
            return filteredShelters.count
        }
        else {
            return shelters.count
        }

    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ShelterSearchTableViewCell
        
        // Configure the cell...
		let shelter = (shouldShowSearchResults) ? filteredShelters[indexPath.row] : shelters[indexPath.row]
		cell.updateForShelter(shelter)

        return cell
	}

    func configureSearchController() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = true
        searchController.searchBar.placeholder = "Shelter local search......"
        searchController.searchBar.delegate = self
        searchController.searchBar.sizeToFit()
        shelterSearchView.tableHeaderView = searchController.searchBar
        
    }
    
    
    func configureCustomSearchController() {
        shelterSearchController = ShelterSearchController(searchResultsController: self, searchBarFrame: CGRect(x: 0.0, y: 0.0, width: shelterSearchView.frame.size.width, height: 50.0), searchBarFont: UIFont(name: "Futura", size: 16.0)!, searchBarTextColor: UIColor.orange, searchBarTintColor: UIColor.black)
        
        shelterSearchController.shelterSearchBar.placeholder = "Search for local Shelters....."
        shelterSearchView.tableHeaderView = shelterSearchController.shelterSearchBar
        
        shelterSearchController.shelterSearchDelegate = self
    }


    
    // MARK: UISearchBarDelegate functions
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        shouldShowSearchResults = true
        shelterSearchView.reloadData()
    }
    
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        shouldShowSearchResults = false
        shelterSearchView.reloadData()
    }
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if !shouldShowSearchResults {
            shouldShowSearchResults = true
            shelterSearchView.reloadData()
        }
        
        searchController.searchBar.resignFirstResponder()
    }
    
    // MARK: UISearchResultsUpdating delegate function
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchText = searchController.searchBar.text
        
        filterContentForSearchText(searchText)
        shelterSearchView.reloadData()
    }
    
    func filterContentForSearchText(_ searchText: String?) {
		if let someSearchText = searchText {
			filteredShelters = shelters.filter({ ( shelter: Shelter) -> Bool in
            return shelter.cityName.contains(someSearchText) || shelter.shelterName.contains(someSearchText) || shelter.stateName.contains(someSearchText)
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
    
    
    func didChangeSearchText(_ searchText: String) {
		filterContentForSearchText(searchText)

		// Reload the tableview.
        shelterSearchView.reloadData()
    }
}
