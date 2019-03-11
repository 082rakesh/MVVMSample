//
//  ViewController.swift
//  MVVMSample
//
//  Created by rakesh.mishra on 08/03/19.
//  Copyright © 2019 rakesh.mishra. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    private let viewModel:HomeViewModel = HomeViewModel()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        showOnBoardingScreen()
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
    
    /**
     This method is used to show the onboarding alert
     */
    private func showOnBoardingScreen() {
        // show onboarding screen when app launch first time after 2 secong of delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) { [weak self] in
            self?.viewModel.showOnboardingScreenIfNecessary()
        }
        
        viewModel.onUpdate = { [weak self] isOnboardingShow in
            if isOnboardingShow ==  false {
               let alert = UIAlertController(title: "Onboarding", message: "Onboarding has been shown", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "show onboarding", style: .default, handler: nil))
                self?.present(alert, animated: true, completion: nil)
            }
        }
    }

}

