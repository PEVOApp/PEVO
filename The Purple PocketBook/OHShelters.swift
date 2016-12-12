//
//  OHShelters.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 8/22/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class OHShelters: NSObject {
    // MARK: Initialization
    convenience init(plistValues: Dictionary<String, String>) throws {
        guard let cityName = plistValues[OHShelters.CityKey],let stateName = plistValues[OHShelters.StateKey] ,let shelterName = plistValues[OHShelters.NameKey], let phoneNumber = plistValues[OHShelters.PhoneNumberKey] else {
            let errorInfo = [NSLocalizedDescriptionKey : "Shelter plist values did not contain expected city, name, and phone number values for the keys \(OHShelters.CityKey), \(OHShelters.StateKey), \(OHShelters.NameKey), and \(OHShelters.PhoneNumberKey)"]
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
