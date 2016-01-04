//
//  ShelterSearchTableViewCell.swift
//  Pevo
//
//  Created by Charles Augustine on 1/4/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class ShelterSearchTableViewCell: UITableViewCell {
	// MARK: Configuration
	func updateForShelter(shelter: Shelter) {
		cityLabel.text = shelter.cityName
		nameLabel.text = shelter.shelterName
		phoneNumberLabel.text = shelter.hotlineNumber
	}

	// MARK: Properties (IBOutlet)
	@IBOutlet private weak var cityLabel: UILabel!
	@IBOutlet private weak var nameLabel: UILabel!
	@IBOutlet private weak var phoneNumberLabel: UITextView!
}
