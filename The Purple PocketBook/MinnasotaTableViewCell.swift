//
//  MinnasotaTableViewCell.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 8/20/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class MinnasotaTableViewCell: UITableViewCell {
    // MARK: Configuration
    func updateForMnShelter(_ mnshelters: MNShelters) {
        cityLabel.text = mnshelters.cityName
        stateLabel.text = mnshelters.stateName
        nameLabel.text = mnshelters.shelterName
        phoneNumberLabel.text = mnshelters.hotlineNumber
    }
    
    // MARK: Properties (IBOutlet)
    @IBOutlet fileprivate weak var cityLabel: UILabel!
    @IBOutlet fileprivate weak var nameLabel: UILabel!
    @IBOutlet fileprivate weak var stateLabel: UILabel!
    @IBOutlet fileprivate weak var phoneNumberLabel: UITextView!
}
