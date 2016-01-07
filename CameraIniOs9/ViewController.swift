//
//  ViewController.swift
//  CameraIniOs9
//
//  Created by Daniel Szasz on 08/01/2016.
//  Copyright © 2016 Daniel Szasz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mBtnCamera: UIButton!
    @IBOutlet weak var mBtnPhototLibrary: UIButton!
    
    var chosenImage: UIImage!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnTouchUpInsideBtnCamera(sender: UIButton) {
        doCameraOpen()
    }
    
    
    @IBAction func OnTouchUpInsideBtnPhotoLibrary(sender: UIButton) {
        doPhotoLibraryOpen()
    }
    
    func doCameraOpen(){
        doGetImageFromSource(.Camera)
    }
    
    func doPhotoLibraryOpen(){
        doGetImageFromSource(.PhotoLibrary)
    }
    
    func doGetImageFromSource(sourceType: UIImagePickerControllerSourceType){
        let imagePicker = UIImagePickerController()
        
        imagePicker.delegate = self
        imagePicker.sourceType = sourceType
        
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        mImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        print("reference url : ", info[UIImagePickerControllerReferenceURL])
        print("media url : ", info[UIImagePickerControllerMediaURL])
        dismissViewControllerAnimated( true, completion: nil)
        
    }

}

