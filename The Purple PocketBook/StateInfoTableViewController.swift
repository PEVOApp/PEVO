//
//  StateInfoTableViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 1/26/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class StateInfoTableViewController: UITableViewController {
    
    var StateInfoArray = [String]()
    var PevoDVInfoArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return StateInfoArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("StateInfoCell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        
        cell.textLabel?.text = StateInfoArray[indexPath.row]

        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        let DestViewController = segue.destinationViewController as! PevoInfoTableViewController
        DestViewController.DVInfoArray = PevoDVInfoArray[indexPath.row]

    }

}
