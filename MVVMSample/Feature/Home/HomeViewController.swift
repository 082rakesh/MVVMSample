//
//  ViewController.swift
//  MVVMSample
//
//  Created by r.f.kumar.mishra on 08/03/19.
//  Copyright © 2019 rakesh.mishra. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

    /**
     Set up title of the labels
     */
    func setupUI() {
        self.title = NSLocalizedString("Home.title", comment: "Home")
    }
    
    @IBAction func settingAction(_ sender: UIButton) {
        //self.present(SettingsViewController(), animated: true, completion: nil)
    }

}

