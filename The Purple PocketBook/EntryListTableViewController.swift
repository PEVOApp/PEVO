//
//  EntryListTableViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 2/3/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class EntryListTableViewController: UITableViewController {
    
    @IBOutlet var EntryListTableView: UITableView!

    override func viewWillAppear(animated: Bool) {
        EntryListTableView.reloadData()
        editButtonEligibility()
        self.EntryListTableView.editing = false
        saveEntries()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let savedEntries = loadEntries() {
            Entries.allEntries.collection += savedEntries
        } else {
            loadEntries()
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: From Table View To Filled Out Detail View
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "EntryDetails" {
            if let destinationViewController = segue.destinationViewController as? EntryDetailViewController {
                _ = destinationViewController.view
                
                let indexPath = self.EntryListTableView.indexPathForSelectedRow
                
                if let selectedRow = indexPath?.row {
                    let entry = Entries.allEntries.collection[selectedRow]
                    destinationViewController.updateDetailsOn(entry)
                }
            }
        }
    }
    
    // MARK: UITableViewDataSource Protocol Methods
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PevoJournalCell") as! JournalEntryTableViewCell
        
        cell.TitleTextLabel.text = Entries.allEntries.collection[indexPath.row].title
        cell.BodyTextLabel.text = Entries.allEntries.collection[indexPath.row].text
        cell.TimeStampLabel.text = Entries.allEntries.collection[indexPath.row].timestamp.description
        
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Entries.allEntries.collection.count
    }
    
    // Checks On Eligibility Of Edit Button
    func editButtonEligibility() {
        if Entries.allEntries.collection.count > 0 {
            editButton.enabled = true
        } else {
            editButton.enabled = false
        }
    }
    // MARK: Methods To Allow Removal Of Rows
    // For The Edit Button On The Nav Bar
    
    @IBOutlet var editButton: UIBarButtonItem!
    
    @IBAction func editButton(sender: AnyObject) {
        if self.EntryListTableView.editing {
            editButton.title = "Edit"
            self.EntryListTableView.setEditing(false, animated: true)
            editButtonEligibility()
        } else {
            editButton.title = "Done"
            self.EntryListTableView.setEditing(true, animated: true)
            editButtonEligibility()
        }
    }
    
    // For The Swiping Of Rows On The Table View
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.Delete
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            let entry = Entries.allEntries.collection[indexPath.row]
            Entries.allEntries.removeEntry(entry)
            saveEntries()
            
            self.EntryListTableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
            if Entries.allEntries.collection.count == 0 {
                editButton.title = "Edit"
                editButtonEligibility()
            }
        }
    }
    
    // MARK: NSCoding
    func saveEntries() {
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(Entries.allEntries.collection, toFile: JournalEntry.ArchiveURL.path!)
        
        if !isSuccessfulSave {
            print("Failed to save entries.")
        }
    }
    
    func loadEntries() -> [JournalEntry]? {
        return NSKeyedUnarchiver.unarchiveObjectWithFile(JournalEntry.ArchiveURL.path!) as? [JournalEntry]
    }
    
}
