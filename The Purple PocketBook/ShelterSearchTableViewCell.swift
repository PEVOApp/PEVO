//
//  ShelterSearchTableViewCell.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 12/3/15.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class ShelterSearchTableViewCell: UITableViewCell {
	// MARK: Configuration
	func updateForShelter(_ shelter: Shelter) {
		cityLabel.text = shelter.cityName
        stateLabel.text = shelter.stateName
		nameLabel.text = shelter.shelterName
		phoneNumberLabel.text = shelter.hotlineNumber
	}

	// MARK: Properties (IBOutlet)
	@IBOutlet fileprivate weak var cityLabel: UILabel!
	@IBOutlet fileprivate weak var nameLabel: UILabel!
    @IBOutlet fileprivate weak var stateLabel: UILabel!
	@IBOutlet fileprivate weak var phoneNumberLabel: UITextView!
}
