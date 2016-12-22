//
//  WebViewController.swift
//  FinalExam
//
//  Created by Tarin Rickett on 12/22/16.
//  Copyright © 2016 Mobile Application Development. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load Website
        let www = Profile.PROFILE.www
        if let url = URL(string: www!) {
            let request = URLRequest(url: url)
            webView.loadRequest(request)
        } else {
            print("Inavlid url: \(www)")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Load Website
        let www = Profile.PROFILE.www
        if let url = URL(string: www!) {
            let request = URLRequest(url: url)
            webView.loadRequest(request)
        } else {
            print("Inavlid url: \(www)")
        }
    }
    
}
