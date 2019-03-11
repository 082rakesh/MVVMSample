//
//  OnboardingPreference.swift
//  MVVMSample
//
//  Created by r.f.kumar.mishra on 11/03/19.
//  Copyright © 2019 r.f.kumar.mishra. All rights reserved.
//

import Foundation

protocol OnboardingPreference {
    func setOnboardingShown(_ value: Bool)
    func getOnboardingShown() -> Bool
}

final class OnboardingPreferenceStore: OnboardingPreference {

    func setOnboardingShown(_ value: Bool) {
        let defaults = UserDefaults.standard
        
        if !defaults.bool(forKey: Constants.Shared.isOnboardingShown) {
            defaults.set(value, forKey: Constants.Shared.isOnboardingShown)
            defaults.synchronize()
        }
    }
    
    func getOnboardingShown() -> Bool {
        let defaults = UserDefaults.standard
        return defaults.bool(forKey: Constants.Shared.isOnboardingShown)
    }
}
