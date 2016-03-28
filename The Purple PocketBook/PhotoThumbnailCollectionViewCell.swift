//
//  PhotoThumbnailCollectionViewCell.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 2/8/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit

class PhotoThumbnailCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var ImageView: UIImageView!
    
    
    func setThumbnailImage(thumbnailImage: UIImage){
        self.ImageView.image = thumbnailImage
    }
    
    
    
}
