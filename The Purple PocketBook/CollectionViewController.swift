//
//  CollectionViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 9/1/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    @IBOutlet var sideBarButton: UIBarButtonItem!
    
    var SponsorArray = [SponsorView]()
    
    var titleArray = [String]()
    var sponsorsArray = [String]()
    var imagesArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if self.revealViewController() != nil {
            sideBarButton.target = self.revealViewController()
            sideBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        SponsorArray = [SponsorView(SponsorViewArray: ["PEVO is the most comprehensive mobile app for domestic violence created thus far. This app features: \nSecrecy: the app provides a discreet, untraceable platform for women to review their available resources, including local shelter contact information. \nSafe, secure escape options: the women can finally see relief from this awful situation. \nEducation: Questionnaire designed to confirm what type of domestic violence you may be experiencing. Suggestions on how to keep your social media accounts secure. \nLegal information for each state (if your state is listed) Internet connection is not required to access this app once downloaded offered in 6 different languages: English, Korean, Spanish, Arabic, Urbu and Hindi. \nPEVO app has become the one-stop shop for useful information and a crucial resource for those that truly need it. PEVO app will consist of national information that can be applied to all states while containing local laws and policies supplied by each state.", "Domestic violence continues to ravage society on a daily basis. Long after the abuse has ceased those affected still carry the trauma with them, which can effect a person for the rest of their life.  These effects hinder future relationships, career choices, and personal goals. \nDomestic violence continues to ravage society on a daily basis. Long after the abuse has ceased those affected still carry the trauma with them, which can effect a person for the rest of their life.  These effects hinder future relationships, career choices, and personal goals. \nMake a choice today to enter into a new life of change. It is time to divorce the story of your past & be the advice you would give your children, friends, and family. It all starts now, so close your eyes to inhale the future and exhale the past."])]

        
        imagesArray = ["scarf","e3inspirelogo"]
        titleArray = ["Purple Evolution, Inc. (PEVO)","E3inspire \nEducate, Empower, Engage"]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as UICollectionViewCell

        
        let label = cell.viewWithTag(4) as! UILabel
        label.text = titleArray[indexPath.row]
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: imagesArray[indexPath.row])

        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArray.count
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController = segue.destination as! PevoSponsorViewController
        
        DestViewController.sponsorText = "hello"
    }
    
}
