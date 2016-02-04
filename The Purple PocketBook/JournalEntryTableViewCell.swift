//
//  JournalEntryTableViewCell.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 2/3/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class JournalEntryTableViewCell: UITableViewCell {

    @IBOutlet var TitleTextLabel: UILabel!
    @IBOutlet var BodyTextLabel: UILabel!
    @IBOutlet var TimeStampLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
