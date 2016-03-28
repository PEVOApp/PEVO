//
//  EntryDetailViewController.swift
//  Pevo
//
//  Created by Alicia MacBook Pro on 2/3/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

import UIKit
import Photos
import RealmSwift


let reuseIdentifier = "PhotoCell"
let albumName = "My App"


class EntryDetailViewController: UIViewController, UITextFieldDelegate, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var assetCollection: PHAssetCollection!
    var photoAsset: PHFetchResult!
    var albumFound: Bool = false
    var assetThumbnailSize:CGSize!
    var index: Int = 0
    
    var entry: JournalEntry?
    
    @IBOutlet var SaveButton: UIBarButtonItem!
    @IBOutlet var DetailTextField: UITextField!
    @IBOutlet var EntryDetailTextField: UITextField!
    @IBOutlet var CollectionView: UICollectionView!
    
    
    func SaveJournals() {
        
        let newJournal = JournalItem()
        newJournal.Detail = DetailTextField.text!
        newJournal.EntryDetail = EntryDetailTextField.text!
        
        do
        {
            let realm = try Realm()
            try realm.write({ () -> Void in
                realm.add(newJournal)
                print("Journal Saved")
            })
            
        }
        catch
        {
            
        }
    }
    
    
    @IBAction func CameraButton(sender: AnyObject) {
        
        if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)){
            //load the camera interface
            let picker : UIImagePickerController = UIImagePickerController()
            picker.sourceType = UIImagePickerControllerSourceType.Camera
            picker.delegate = self
            picker.allowsEditing = false
            self.presentViewController(picker, animated: true, completion: nil)
        }else{
            //no camera available
            let alert = UIAlertController(title: "Error", message: "There is no camera available", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .Default, handler: {(alertAction)in
                alert.dismissViewControllerAnimated(true, completion: nil)
            }))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    
    }
    
    @IBAction func PhotoAlbumButton(sender: AnyObject) {
        
        let picker : UIImagePickerController = UIImagePickerController()
        picker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        picker.mediaTypes = UIImagePickerController.availableMediaTypesForSourceType(.PhotoLibrary)!
        picker.delegate = self
        picker.allowsEditing = false
        self.presentViewController(picker, animated: true, completion: nil)

    }
    
    
    //UICollectionViewDataSource Methods (Remove the "!" on variables in the function prototype)
   
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        var count: Int = 0
        if(self.photoAsset != nil){
            count = self.photoAsset.count
            
        }
        return count;

    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        
        let cell: PhotoThumbnailCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! PhotoThumbnailCollectionViewCell
        
        //Modify the cell
        
        let asset: PHAsset = self.photoAsset[indexPath.item] as! PHAsset
        PHImageManager.defaultManager().requestImageForAsset(asset, targetSize: self.assetThumbnailSize, contentMode: .AspectFill, options: nil, resultHandler: {(result, info)in
            if let image = result {
                cell.setThumbnailImage(image)
            }
        })
        return cell
    }
    
    //UICollectionViewDelegateFlowLayout methods
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat{
        return 4
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat{
        return 1
    }
    
    //UIImagePickerControllerDelegate Methods
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]){
        if let image: UIImage = info["UIImagePickerControllerOriginalImage"] as? UIImage{
            
            //Implement if allowing user to edit the selected image
            //let editedImage = info.objectForKey("UIImagePickerControllerEditedImage") as UIImage
            
            let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
            dispatch_async(dispatch_get_global_queue(priority, 0), {
                PHPhotoLibrary.sharedPhotoLibrary().performChanges({
                    let createAssetRequest = PHAssetChangeRequest.creationRequestForAssetFromImage(image)
                    let assetPlaceholder = createAssetRequest.placeholderForCreatedAsset
                    if let albumChangeRequest = PHAssetCollectionChangeRequest(forAssetCollection: self.assetCollection, assets: self.photoAsset) {
                        albumChangeRequest.addAssets([assetPlaceholder!])
                    }
                    }, completionHandler: {(success, error)in
                        dispatch_async(dispatch_get_main_queue(), {
                            NSLog("Adding Image to Library -> %@", (success ? "Sucess":"Error!"))
                            picker.dismissViewControllerAnimated(true, completion: nil)
                        })
                })
                
            })
        }
    }
    
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController){
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func SaveButton(sender: AnyObject) {
        
        if let entry = self.entry {
            entry.title = self.DetailTextField.text!
            entry.text = self.EntryDetailTextField.text!
            entry.timestamp = NSDate()
        } else {
            let title = DetailTextField.text
            let text = EntryDetailTextField.text
            let timestamp = NSDate()
            
            let newEntry = JournalEntry(title: title!, text: text!, timestamp: timestamp)
            Entries.allEntries.saveEntry(newEntry)
            self.entry = newEntry
        }
        SaveJournals()
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func ClearButton(sender: AnyObject) {
        DetailTextField.text = ""
        EntryDetailTextField.text = ""
        checkTitleValidity()
    }
    
    func updateDetailsOn(entry: JournalEntry) {
        self.entry = entry
        title = entry.title
        DetailTextField.text = entry.title
        EntryDetailTextField.text = entry.text
    }
    
    func checkTitleValidity() {
        SaveButton.enabled = !(DetailTextField.text == "")
    }
    
    override func viewWillAppear(animated: Bool) {
        
        
        // Get size of the collectionView cell for thumbnail image
        if let layout = self.CollectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            let cellSize = layout.itemSize
            self.assetThumbnailSize = CGSizeMake(cellSize.width, cellSize.height)
        }

        checkTitleValidity()
        
    //fetch the photo from collection
        
        self.navigationController?.hidesBarsOnTap = false
        
        self.CollectionView.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Check if the folder exists, if not, create it
        let fetchOptions = PHFetchOptions()
        fetchOptions.predicate = NSPredicate(format: "title = %@", albumName)
        let collection:PHFetchResult = PHAssetCollection.fetchAssetCollectionsWithType(.Album, subtype: .Any, options: fetchOptions)
        
        if let first_Obj:AnyObject = collection.firstObject{
            //found the album
            self.albumFound = true
            self.assetCollection = first_Obj as! PHAssetCollection
        }else{
            //Album placeholder for the asset collection, used to reference collection in completion handler
            var albumPlaceholder:PHObjectPlaceholder!
            //create the folder
            NSLog("\nFolder \"%@\" does not exist\nCreating now...", albumName)
            PHPhotoLibrary.sharedPhotoLibrary().performChanges({
                let request = PHAssetCollectionChangeRequest.creationRequestForAssetCollectionWithTitle(albumName)
                albumPlaceholder = request.placeholderForCreatedAssetCollection
                },
                completionHandler: {(success:Bool, error:NSError?)in
                    if(success){
                        print("Successfully created folder")
                        self.albumFound = true
                        let collection = PHAssetCollection.fetchAssetCollectionsWithLocalIdentifiers([albumPlaceholder.localIdentifier], options: nil)
                        self.assetCollection = collection.firstObject as! PHAssetCollection
                    }else{
                        print("Error creating folder")
                        self.albumFound = false
                    }
            })
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "viewLargePhoto"){
            if let controller:EntryDetailViewController = segue.destinationViewController as? EntryDetailViewController{
                if let cell = sender as? UICollectionViewCell{
                    if let indexPath: NSIndexPath = self.CollectionView.indexPathForCell(cell){
                        controller.index = indexPath.item
                        controller.photoAsset = self.photoAsset
                        controller.assetCollection = self.assetCollection
                    }
                }
            }
        }
    }
    
    // MARK: UITextFieldDelegate Protocol
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        if textField == DetailTextField {
            title = EntryDetailTextField.text
        }
        
        checkTitleValidity()
        
    }
    
    
}
