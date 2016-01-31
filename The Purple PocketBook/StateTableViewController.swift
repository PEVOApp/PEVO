//
//  StateTableViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 1/26/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class StateTableViewController: UITableViewController {
    
    var StateListArray = [String]()
    var PevoStateInfoArray = [PevoStateInfo]()
    var PevoInfoListArray = [PevoInfo]()
    var DVInfoArray = [PevoDVInfo]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        StateListArray = ["Georgia", "Wisconsin", "Minnesota"]
        
        PevoStateInfoArray =
            [PevoStateInfo(StateInfoTitle: ["Georgia State Shelters", "Georgia State Law", "Georgia State Unemployment", "Georgia Where to find help"]),
        PevoStateInfo(StateInfoTitle: ["Wisconsin State Shelters", "Wisconsin State Law", "Wisconsin State Unemployment", "Wisconsin Where to find help"]),
        PevoStateInfo(StateInfoTitle: ["Minnesota State Shelters", "Minnesota State Law", "Minnesota State Unemployment", "Minnesota Where to find help"])]
        
        PevoInfoListArray = [
            PevoInfo(InfoDVTitle: ["Georgia1", "Georgia2", "Georgia3", "Georgia4"]),
            PevoInfo(InfoDVTitle: ["Georgia1", "Georgia2", "Georgia3", "Georgia4"]),
            PevoInfo(InfoDVTitle: ["Georgia1", "Georgia2", "Georgia3", "Georgia4"]),
            PevoInfo(InfoDVTitle: ["Georgia1", "Georgia2", "Georgia3", "Georgia4"])]
        
        DVInfoArray = [PevoDVInfo(PevoInfoTitle: ["", ""], PevoInfoContent: "")]


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return StateListArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("StateCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = StateListArray[indexPath.row]

        return cell
    }

    // MARK: - Navigation


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        let DestViewController = segue.destinationViewController as! StateInfoTableViewController
        
        var PevoDVListArray : PevoStateInfo
        PevoDVListArray = PevoStateInfoArray[indexPath.row]
        DestViewController.StateInfoArray = PevoDVListArray.StateInfoTitle
        
        var DVInfoListArray : PevoInfo
        DVInfoListArray = PevoInfoListArray[indexPath.row]
        DestViewController.PevoDVInfoArray = DVInfoListArray.InfoDVTitle
        
        
        
        
        
        

        
        
        
        

    }

}
