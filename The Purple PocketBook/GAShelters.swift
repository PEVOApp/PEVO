//
//  GAShelters.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 5/12/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import Foundation

class GAShelters : NSObject {
    // MARK: Initialization
    convenience init(plistValues: Dictionary<String, String>) throws {
        guard let cityName = plistValues[GAShelters.CityKey],let stateName = plistValues[GAShelters.StateKey] ,let shelterName = plistValues[GAShelters.NameKey], let phoneNumber = plistValues[GAShelters.PhoneNumberKey] else {
            let errorInfo = [NSLocalizedDescriptionKey : "Shelter plist values did not contain expected city, name, and phone number values for the keys \(GAShelters.CityKey), \(GAShelters.StateKey), \(GAShelters.NameKey), and \(GAShelters.PhoneNumberKey)"]
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
