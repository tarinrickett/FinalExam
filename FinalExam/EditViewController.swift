//
//  EditViewController.swift
//  FinalExam
//
//  Created by Tarin Rickett on 12/22/16.
//  Copyright © 2016 Mobile Application Development. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var interestsTextField: UITextField!
    @IBOutlet weak var wwwTextField: UITextField!
    @IBOutlet weak var captionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstNameTextField.text = Profile.PROFILE.firstName
        lastNameTextField.text = Profile.PROFILE.lastName
        interestsTextField.text = Profile.PROFILE.interests
        wwwTextField.text = Profile.PROFILE.www
        captionTextField.text = Profile.PROFILE.caption
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        firstNameTextField.text = Profile.PROFILE.firstName
        lastNameTextField.text = Profile.PROFILE.lastName
        interestsTextField.text = Profile.PROFILE.interests
        wwwTextField.text = Profile.PROFILE.www
        captionTextField.text = Profile.PROFILE.caption
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.endEditing(true)
        Profile.PROFILE.firstName = firstNameTextField.text
        Profile.PROFILE.lastName = lastNameTextField.text
        Profile.PROFILE.interests = interestsTextField.text
        Profile.PROFILE.www = wwwTextField.text
        Profile.PROFILE.caption = captionTextField.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
