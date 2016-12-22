//
//  ViewController.swift
//  FinalExam
//
//  Created by Tarin Rickett on 12/22/16.
//  Copyright © 2016 Mobile Application Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {


    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var interestsLabel: UILabel!
    @IBOutlet weak var wwwLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstNameLabel.text = Profile.PROFILE.firstName
        lastNameLabel.text = Profile.PROFILE.lastName
        interestsLabel.text = Profile.PROFILE.interests
        wwwLabel.text = Profile.PROFILE.www
        captionLabel.text = Profile.PROFILE.caption
        image.isUserInteractionEnabled = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        firstNameLabel.text = Profile.PROFILE.firstName
        lastNameLabel.text = Profile.PROFILE.lastName
        interestsLabel.text = Profile.PROFILE.interests
        wwwLabel.text = Profile.PROFILE.www
        captionLabel.text = Profile.PROFILE.caption
        image.isUserInteractionEnabled = true
    }
    
    @IBAction func choosePhoto(_ sender: AnyObject) {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let photo = info[UIImagePickerControllerOriginalImage] as! UIImage
        image.image = photo
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

