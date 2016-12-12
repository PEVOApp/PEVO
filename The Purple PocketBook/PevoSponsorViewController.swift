//
//  PevoSponsorViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 5/13/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class PevoSponsorViewController: UIViewController {
    
    struct SponsorView {
        var SponsorViewArray = [String]()
    }

    @IBOutlet var sponsorImage: UIImageView!
    
    @IBOutlet var sponsorLabel: UILabel!
    
    var sponsorText = String()
    var sponsorImagesArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func PevoButtonPress(_ sender: AnyObject) {
        
        let url = URL(string: "http://www.pevo.us")
        UIApplication.shared.openURL(url!)
        
    }
    
        
        
}


