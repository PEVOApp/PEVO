//
//  PhotoViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 2/6/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit
import Photos 

class PhotoViewController: UIViewController {
    
    var assetCollection: PHAssetCollection!
    var photoAsset: PHFetchResult!
    var index: Int = 0


    @IBAction func CancelButton(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true) //!!Added Optional Chaining
    }
    
    @IBAction func ExportButton(sender: AnyObject) {
    }
    
    @IBAction func TrashButton(sender: AnyObject) {
        
        let alert = UIAlertController(title: "Delete Image", message: "Are you sure you want to delete this image", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .Default, handler: {(alertAction) in
            
            // Delete Photo
            
            PHPhotoLibrary.sharedPhotoLibrary().performChanges({
                let request = PHAssetCollectionChangeRequest(forAssetCollection: self.assetCollection)
                
                request?.removeAssets(
                    [self.photoAsset[self.index]])
                }, completionHandler: {(success, error)in
                    
            })
            
            
        }))
        
        alert.addAction(UIAlertAction(title: "No", style: .Cancel, handler: {(alertAction)in
         //Do not delete photo
        alert.dismissViewControllerAnimated(true, completion: nil)
            self.photoAsset = PHAsset.fetchAssetsInAssetCollection(self.assetCollection, options: nil)
            if(self.photoAsset.count == 0){
                //no photo left
                self.ImageView.image = nil
                //Pop to root view controller
                
                if (self.index >= self.photoAsset.count){
                    self.index = self.photoAsset.count - 1
                    
                }
                self.displayPhoto()
            }
        
        }))

        self.presentViewController(alert, animated: true, completion: nil)

    }
    
    @IBOutlet var ImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        self.navigationController?.hidesBarsOnTap = true
        
        self.displayPhoto()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayPhoto(){
        // Set targetSize of image to iPhone screen size
        let screenSize: CGSize = UIScreen.mainScreen().bounds.size
        let targetSize = CGSizeMake(screenSize.width, screenSize.height)
        
        let imageManager = PHImageManager.defaultManager()
        if let asset = self.photoAsset[self.index] as? PHAsset{
            imageManager.requestImageForAsset(asset, targetSize: targetSize, contentMode: .AspectFit, options: nil, resultHandler: {
                (result, info)->Void in
                self.ImageView.image = result
            })
        }
    }
    
    

}
