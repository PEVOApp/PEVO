//
//  PevoHelpTableViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 5/14/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class PevoHelpTableViewController: UITableViewController {
    
    var helpingArray = [String]()
    var website = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        helpingArray = ["", "", ""]
        website = ["", "", ""]


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return helpingArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell

        // Configure the cell...
        
        cell.textLabel?.text = helpingArray[indexPath.row]

        return cell
    }

//
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
