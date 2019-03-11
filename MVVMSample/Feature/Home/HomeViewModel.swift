//
//  HomeViewModel.swift
//  MVVMSample
//
//  Created by r.f.kumar.mishra on 11/03/19.
//  Copyright © 2019 r.f.kumar.mishra. All rights reserved.
//

import Foundation

final class HomeViewModel {

    var onUpdate: ((Bool) -> Void)?
    
    var onBoardingPreferenceStore: OnboardingPreferenceStore
    
    init(onBoardingPreferenceStore: OnboardingPreferenceStore =  OnboardingPreferenceStore()) {
        self.onBoardingPreferenceStore = onBoardingPreferenceStore
    }
    
    /**
     This method uses to show the promo screen first time after installing the app.
     */
    func showOnboardingScreenIfNecessary() {
        let isOnboardingShown = onBoardingPreferenceStore.getOnboardingShown()
        if isOnboardingShown == false {
            onBoardingPreferenceStore.setOnboardingShown(!isOnboardingShown)
        }
        
        onUpdate?(isOnboardingShown)
    }
}
