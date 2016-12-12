//
//  ShelterSearchBar.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 11/23/15.
//  Copyright © 2015 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class ShelterSearchBar: UISearchBar {
    
    var preferredFont: UIFont!
    
    var preferredTextColor: UIColor!

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        // Find the index of the search filed in the search bar subviews.
        
        

    }

    
    init(frame: CGRect, font: UIFont, textColor: UIColor) {
        super.init(frame: frame)
        
        self.frame = frame
        preferredFont = font
        preferredTextColor = textColor
        
        searchBarStyle = UISearchBarStyle.prominent
        isTranslucent = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func indexOfSearchFieldInSubviews() -> Int! {
        // Uncomment the next line to see the search bar subviews.
        // println(subviews[0].subviews)
        
        var index: Int!
        let searchBarView = subviews[0] as UIView
        
        for x in 0 ..< searchBarView.subviews.count {
            if searchBarView.subviews[x].isKind(of: UITextField.self) {
                index = x
                break
            }
        }
        
        return index
    }
}


