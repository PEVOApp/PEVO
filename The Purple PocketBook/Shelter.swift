//
//  Shelter.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 11/28/15.
//  Copyright © 2015 Alicia MacBook Pro. All rights reserved.
//


import Foundation


class Shelter : NSObject {
	// MARK: Initialization
	convenience init(plistValues: Dictionary<String, String>) throws {
		guard let cityName = plistValues[Shelter.CityKey], let shelterName = plistValues[Shelter.NameKey], let phoneNumber = plistValues[Shelter.PhoneNumberKey] else {
			let errorInfo = [NSLocalizedDescriptionKey : "Shelter plist values did not contain expected city, name, and phone number values for the keys \(Shelter.CityKey), \(Shelter.NameKey), and \(Shelter.PhoneNumberKey)"]
			throw NSError(domain: "pevo", code: 0, userInfo: errorInfo)
		}

		self.init(cityName: cityName, shelterName: shelterName, phoneNumber: phoneNumber)
	}

	required init(cityName: String, shelterName: String, phoneNumber: String) {
		self.cityName = cityName
		self.shelterName = shelterName
		self.hotlineNumber = phoneNumber
	}

	// MARK: Properties
    let cityName:String
    let shelterName:String
    let hotlineNumber:String

	// MARK: Properties (Private Static Constant)
	private static let CityKey = "ShelterCity"
	private static let NameKey = "ShelterName"
	private static let PhoneNumberKey = "ShelterNumber"
}
