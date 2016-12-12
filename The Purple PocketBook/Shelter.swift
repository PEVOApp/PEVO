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
		guard let cityName = plistValues[Shelter.CityKey],let stateName = plistValues[Shelter.StateKey] ,let shelterName = plistValues[Shelter.NameKey], let phoneNumber = plistValues[Shelter.PhoneNumberKey] else {
			let errorInfo = [NSLocalizedDescriptionKey : "Shelter plist values did not contain expected city, state, name, and phone number values for the keys \(Shelter.CityKey), \(Shelter.StateKey), \(Shelter.NameKey), and \(Shelter.PhoneNumberKey)"]
			throw NSError(domain: "pevo", code: 0, userInfo: errorInfo)
		}

        self.init(cityName: cityName, stateName: stateName, shelterName: shelterName, phoneNumber: phoneNumber)
	}

    required init(cityName: String, stateName: String, shelterName: String, phoneNumber: String) {
		self.cityName = cityName
        self.stateName = stateName
		self.shelterName = shelterName
		self.hotlineNumber = phoneNumber
	}

	// MARK: Properties
    let cityName:String
    let stateName:String
    let shelterName:String
    let hotlineNumber:String

	// MARK: Properties (Private Static Constant)
	fileprivate static let CityKey = "ShelterCity"
    fileprivate static let StateKey = "ShelterState"
	fileprivate static let NameKey = "ShelterName"
	fileprivate static let PhoneNumberKey = "ShelterNumber"
}
