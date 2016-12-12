//
//  StateTableViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 1/26/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit


class StateTableViewController: UITableViewController {
    
    @IBOutlet var sideBarButton: UIBarButtonItem!
    
    let alertView = UIAlertController(title: "Don't see your State", message: "If you would like to see your state added please contact Purple Evolution, Inc. at info@pevo.us", preferredStyle: .alert)
    
 //have a good day today what a great day for a movie I am so excited for this to happen but want it all to end right now so that I can rest and chill on my patio with a nice glass of wine.
    
    var StateListArray = [String]()
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            sideBarButton.target = self.revealViewController()
            sideBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
      
        StateListArray = ["Georgia", "Ohio Shelter Search", "Minnasota Shelter Search", "Wisconsin Shelter Search"]
        
        
        alertView.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        alertView.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        DispatchQueue.main.async(execute: {
            self.present(self.alertView, animated: true, completion: nil)
        })
        
        _ = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(StateTableViewController.dismissAlert), userInfo: nil, repeats: false)
    }
    
    func dismissAlert() {
        self.alertView.dismiss(animated: true, completion: nil)
}


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return StateListArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StateListArray[indexPath.row], for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = StateListArray[indexPath.row]

        return cell
    }

}




















