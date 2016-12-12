//
//  ViewController.swift
//  Calculator Pro
//
//  Created by Julian Engel on 7/8/15.
//  Copyright (c) 2015 Julos's Development. All rights reserved.
//

import UIKit

class Calculator: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    let defaults = UserDefaults.standard
    let password = UserDefaults.standard
    var isNotFirstTime = false
    
    
    
    var isFirstDigit = true
    var operand1: Double = 0
    var operation = "="
    
    var displayValue: Double {
        get {
            //notice use of ! twice in below line. If you get that, then you have truely understood optionals :-)
            return NumberFormatter().number(from: displayLabel.text!)!.doubleValue
        }
        set {
            // Notice how we are using a Property Setter to perform additional tasks while
            //setting value for the property
            displayLabel.text  = "\(newValue)"
            isFirstDigit = true
            operation = "="
            
        }
    }
    
    //This single IBAction function is tied to all the digit buttons
    @IBAction func appendDigit(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        //Notice use of ternery operator in below line which results in a single line code
        //instead of usual if-else multiple lines
        displayLabel.text = isFirstDigit ? digit : displayLabel.text! + digit
        isFirstDigit = false
    }
    
    
    
    @IBAction func clearDisplay(_ sender: AnyObject) {
        displayValue = 0
        
        
    }
    
    @IBAction func saveOpperator(_ sender: UIButton) {
        operation = sender.currentTitle!
        operand1 = displayValue
        isFirstDigit = true
    }
    
    @IBAction func calculate(_ sender: AnyObject) {
        switch operation {
        case "÷":displayValue = operand1 / displayValue
        case "×":displayValue *= operand1
        case "+":displayValue += operand1
        case "−":displayValue = operand1 - displayValue
        default:break
        }
    }
    
    
    
    /*
    
    
    HERE WE SET THE PASSWORD.
    
    
    */
    @IBAction func savePwd(_ sender: UIButton) {
        
        // checks if it the first time
        if isNotFirstTime != true{
            //save the password to NSUSERDEFAULTS
            let string = displayLabel.text
//            let pwd = string?.toInt()
            let pwd = Int(string!)
            defaults.set(pwd!, forKey: "Password")
            isNotFirstTime = true
            password.set(isNotFirstTime, forKey: "isFirstTime")
        }
            
        else {
            // Not first time
            
            let myNumber = defaults.integer(forKey: "Password")
            //retrieve the password
            
            if Int((displayLabel.text)!) == myNumber{
            
                // here we are presenting the new View Controller
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "homeViewController") as UIViewController
                self.present(vc, animated: true, completion: nil)
                
            }
            
        }
    }
    
    @IBAction func lock (_ sender : UIButton)
    {
        // Here we are going back to our original View Controller "CALCULATOR"
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Home") as UIViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        isNotFirstTime = password.bool(forKey: "isFirstTime")
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        if isNotFirstTime == false
        {
            // show alert on how to set the password
            // this is optional and you can delete it
            let alertController = UIAlertController(title: "First Time Use", message: "Please Enter a 4 digit passcode and press ==", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
            
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
