////
////  TapUIImageView.swift
////  FinalExam
////
////  Created by Tarin Rickett on 12/22/16.
////  Copyright © 2016 Mobile Application Development. All rights reserved.
////
//
//import UIKit
//
//class TapUIImageView: UIImageView, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
//
//    func tap (_ recognizer: UIGestureRecognizer) {
//        print("TAPPED !!")
//        self.image = UIImage(named: "dogs.jpg")
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        //add tap gesture recognizer to imageview
//        isUserInteractionEnabled = true
//        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(choosePhoto(_:)))
//        addGestureRecognizer(tapRecognizer)
//        self.image = UIImage(named: "vcd.png")
//    }
//    
//    func choosePhoto(_ sender: AnyObject) {
//        print("HELLOOOO")
//        self.image = UIImage(named: "dogs.jpg")
////        let picker = UIImagePickerController()
////        picker.sourceType = .photoLibrary
////        picker.delegate = self
////        present(picker, animated: true, completion: nil)
//    }
//    
//}
