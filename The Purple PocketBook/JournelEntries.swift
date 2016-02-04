//
//  JournelEntries.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 2/3/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import Foundation

class Entries {
    var collection: [JournalEntry] = [JournalEntry]()
    
    static let allEntries = Entries()
    
    func saveEntry(entry: JournalEntry) {
        self.collection.append(entry)
    }
    
    func removeEntry(entry: JournalEntry) {
        if let index = self.collection.indexOf(entry) {
            self.collection.removeAtIndex(index)
        }
    }
}

