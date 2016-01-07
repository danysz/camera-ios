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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnTouchUpInsideBtnCamera(sender: UIButton) {
    }
    
    
    @IBAction func OnTouchUpInsideBtnPhotoLibrary(sender: UIButton) {
    }

}

