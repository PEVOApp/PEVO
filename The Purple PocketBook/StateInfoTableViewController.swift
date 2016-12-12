//
//  StateInfoTableViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 1/26/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class StateInfoTableViewController: UITableViewController {

    
    var GaStateInfoArray = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GaStateInfoArray = ["Georgia Shelter Search", "Georgia State Law", "Georgia Unemployment", "Georgia Where to find help"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return GaStateInfoArray.count
 
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GaStateInfoArray[indexPath.row], for: indexPath)

        
        cell.textLabel?.text = GaStateInfoArray[indexPath.row]
        
        return cell
    }
}














