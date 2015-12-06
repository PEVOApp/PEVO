//
//  ShelterSearchController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 12/5/15.
//  Copyright © 2015 Alicia MacBook Pro. All rights reserved.
//

import UIKit

protocol ShelterSearchControllerDelegate {
    
    func didStartSearching()
    func didTapOnSearchButton()
    func didTapOnCancelButton()
    func didChangeSearchText(searchText: String)
    
}

class ShelterSearchController: UISearchController, UISearchBarDelegate {
    
    var shelterSearchBar: ShelterSearchBar!
    
    var  shelterSearchDelegate: ShelterSearchControllerDelegate!
    
    

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
    

    



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
