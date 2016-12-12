//
//  PevoInfoTableViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 1/26/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class PevoInfoTableViewController: UITableViewController {
    
    var DVInfoArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DVInfoArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PevoInfoCell", for: indexPath) as UITableViewCell
        
        // Configure the cell...
        
        cell.textLabel?.text = DVInfoArray[indexPath.row]
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
}
