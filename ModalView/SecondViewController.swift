//
//  SecondViewController.swift
//  ModalView
//
//  Created by VAndrJ on 9/14/16.
//  Copyright © 2016 VAndrJ. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .default
    }
}

// MARK: Buttons
extension SecondViewController {
    
    @IBAction func close(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
}
