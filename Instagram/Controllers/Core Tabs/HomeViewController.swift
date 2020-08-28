//
//  ViewController.swift
//  Instagram
//
//  Created by Bohdan Tkachenko on 8/27/20.
//  Copyright © 2020 Bohdan Tkachenko. All rights reserved.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        handleNotAuthenticated()
    }
        
        private func handleNotAuthenticated() {
            //Check auth status
                if Auth.auth().currentUser == nil {
                    //Show login
                    let loginVC = LoginViewController()
                    loginVC.modalPresentationStyle = .fullScreen
                    present(loginVC, animated: true)
                    
                    
        }
    }
}

