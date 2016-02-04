//
//  JournalEntry.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 2/3/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import Foundation


class JournalEntry: NSObject, NSCoding {
    struct PropertyKey {
        static let titleKey = "title"
        static let textKey = "text"
        static let timestampKey = "timestamp"
    }
    
    var title: String
    var text: String
    var timestamp: NSDate
    
    init(title: String, text: String, timestamp: NSDate) {
        self.title = title
        self.text = text
        self.timestamp = timestamp
        
        super.init()
    }
    
    // NSCoding Protocol Required Methods
    required convenience init?(coder aDecoder: NSCoder) {
        let title = aDecoder.decodeObjectForKey(PropertyKey.titleKey) as! String
        let text = aDecoder.decodeObjectForKey(PropertyKey.textKey) as! String
        let timestamp = aDecoder.decodeObjectForKey(PropertyKey.timestampKey) as! NSDate
        
        self.init(title: title, text: text, timestamp: timestamp)
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(title, forKey: PropertyKey.titleKey)
        aCoder.encodeObject(text, forKey: PropertyKey.textKey)
        aCoder.encodeObject(timestamp, forKey: PropertyKey.timestampKey)
    }
    
    // MARK: Archiving Paths
    static let DocDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    static let ArchiveURL = DocDirectory.URLByAppendingPathComponent("entries")
}

func ==(lhs: JournalEntry, rhs: JournalEntry) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}
