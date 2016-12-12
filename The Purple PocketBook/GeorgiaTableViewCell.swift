//
//  GeorgiaTableViewCell.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 8/22/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class GeorgiaTableViewCell: UITableViewCell {
    // MARK: Configuration
    func updateForGaShelter(_ gashelters: GAShelters) {
        cityLabel.text = gashelters.cityName
        stateLabel.text = gashelters.stateName
        nameLabel.text = gashelters.shelterName
        phoneNumberLabel.text = gashelters.hotlineNumber
    }
    
    // MARK: Properties (IBOutlet)
    @IBOutlet fileprivate weak var cityLabel: UILabel!
    @IBOutlet fileprivate weak var nameLabel: UILabel!
    @IBOutlet fileprivate weak var stateLabel: UILabel!
    @IBOutlet fileprivate weak var phoneNumberLabel: UITextView!
}
