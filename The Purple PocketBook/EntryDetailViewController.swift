//
//  EntryDetailViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 2/3/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate {
    
    var entry: JournalEntry?
    
    @IBOutlet var SaveButton: UIBarButtonItem!
    @IBOutlet var DetailTextField: UITextField!
    @IBOutlet var EntryDetailTextField: UITextField!
    
    
    @IBAction func SaveButton(sender: AnyObject) {
        
        if let entry = self.entry {
            entry.title = self.DetailTextField.text!
            entry.text = self.EntryDetailTextField.text!
            entry.timestamp = NSDate()
        } else {
            let title = DetailTextField.text
            let text = EntryDetailTextField.text
            let timestamp = NSDate()
            
            let newEntry = JournalEntry(title: title!, text: text!, timestamp: timestamp)
            Entries.allEntries.saveEntry(newEntry)
            self.entry = newEntry
        }
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func ClearButton(sender: AnyObject) {
        DetailTextField.text = ""
        EntryDetailTextField.text = ""
        checkTitleValidity()
    }
    
    func updateDetailsOn(entry: JournalEntry) {
        self.entry = entry
        title = entry.title
        DetailTextField.text = entry.title
        EntryDetailTextField.text = entry.text
    }
    
    func checkTitleValidity() {
        SaveButton.enabled = !(DetailTextField.text == "")
    }
    
    override func viewWillAppear(animated: Bool) {
        checkTitleValidity()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DetailTextField.delegate = self
        EntryDetailTextField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: UITextFieldDelegate Protocol
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        if textField == DetailTextField {
            title = EntryDetailTextField.text
        }
        
        checkTitleValidity()
        
    }
    
}
