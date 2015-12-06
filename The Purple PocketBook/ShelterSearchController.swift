//
//  ShelterSearchController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 12/5/15.
//  Copyright © 2015 Alicia MacBook Pro. All rights reserved.
//

import UIKit

protocol SearchControllerDelegate {
    
    func didStartSearching()
    func didTapOnSearchButton()
    func didTapOnCancelButton()
    func didChangeSearchText(searchText: String)
    
}

class ShelterSearchController: UISearchController, UISearchBarDelegate {
    
    var shelterSearchBar: ShelterSearchBar!
    
    var  shelterSearchDelegate: SearchControllerDelegate!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Initialization
    
    init(searchResultsController: UIViewController!, searchBarFrame: CGRect, searchBarFont: UIFont, searchBarTextColor: UIColor, searchBarTintColor: UIColor) {
        super.init(searchResultsController: searchResultsController)
        
        configureSearchBar(searchBarFrame, font: searchBarFont, textColor: searchBarTextColor, bgColor: searchBarTintColor)
    }
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    // MARK: Custom functions
    
    func configureSearchBar(frame: CGRect, font: UIFont, textColor: UIColor, bgColor: UIColor) {
        shelterSearchBar = ShelterSearchBar(frame: frame, font: font , textColor: textColor)
        
        shelterSearchBar.barTintColor = bgColor
        shelterSearchBar.tintColor = textColor
        shelterSearchBar.showsBookmarkButton = false
        shelterSearchBar.showsCancelButton = true
        
        shelterSearchBar.delegate = self

    }
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        
        shelterSearchDelegate.didStartSearching()
        
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        
        shelterSearchBar.resignFirstResponder()
        shelterSearchDelegate.didTapOnSearchButton()
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        
        shelterSearchBar.resignFirstResponder()
        shelterSearchDelegate.didTapOnCancelButton()
    }

    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
        shelterSearchDelegate.didChangeSearchText(searchText)
    }

    
}
