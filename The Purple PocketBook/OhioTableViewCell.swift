//
//  OhioTableViewCell.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 8/20/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class OhioTableViewCell: UITableViewCell {
    // MARK: Configuration
    func updateForOhShelter(_ ohshelters: OHShelters) {
        cityLabel.text = ohshelters.cityName
        stateLabel.text = ohshelters.stateName
        nameLabel.text = ohshelters.shelterName
        phoneNumberLabel.text = ohshelters.hotlineNumber
    }
    
    // MARK: Properties (IBOutlet)
    @IBOutlet fileprivate weak var cityLabel: UILabel!
    @IBOutlet fileprivate weak var nameLabel: UILabel!
    @IBOutlet fileprivate weak var stateLabel: UILabel!
    @IBOutlet fileprivate weak var phoneNumberLabel: UITextView!
}
