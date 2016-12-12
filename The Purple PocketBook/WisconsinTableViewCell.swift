//
//  WisconsinTableViewCell.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 8/20/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class WisconsinTableViewCell: UITableViewCell {
    // MARK: Configuration
    func updateForWiShelter(_ wishelters: WIShelters) {
        cityLabel.text = wishelters.cityName
        stateLabel.text = wishelters.stateName
        nameLabel.text = wishelters.shelterName
        phoneNumberLabel.text = wishelters.hotlineNumber
    }
    
    // MARK: Properties (IBOutlet)
    @IBOutlet fileprivate weak var cityLabel: UILabel!
    @IBOutlet fileprivate weak var nameLabel: UILabel!
    @IBOutlet fileprivate weak var stateLabel: UILabel!
    @IBOutlet fileprivate weak var phoneNumberLabel: UITextView!
}
