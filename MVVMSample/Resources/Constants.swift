//
//  Constants.swift
//  IAPDemo
//
//  Created by rakesh.mishra on 12/02/19.
//  Copyright © 2019 r.f.kumar.mishra. All rights reserved.
//

import UIKit

/// Define static String constants used in the app here as static let variables
enum Constants {


    enum SettingsSection: Int {
        case SectionTwoIndex = 1
        case SectionThreeIndex
    }
    
    enum SettingsRows: Int {
        case entrainmentLibraryRowIndex = 2
        case twentyFourHourClockRowIndex
        case disconnectRowIndex
    }


    enum Settings {
        static let headerHeight = 50.0
        static let mainStoryboard = "Main"
        static let crossButtonWidth = 30.0
        static let crossButtonHeight = 30.0
        static let crossImage = "close"
        static let cellHeight = 70.0
        static let forgetCellHeight = 120.0
        static let sectionFooterHeight = 1.0

        static let titleTopEdgeWithInset = 22.0
        static let titleBottomEdgeWithInset = 22.0
        static let titleLeadingEdgeWithInset = 22.0
        static let titleTrailingEdgeWithInset = -5.0

        static let detailLabelTrailingEdgeWithInset = -15.0
        static let detailLabelTopEdgeWithInset = 22.0
        static let detailLabelBottomEdgeWithInset = 22.0

        static let seperatorViewBottomWithInset = 0.0
        static let seperatorViewLeadingWithInset = 0.0
        static let seperatorViewTrailingWithInset = 0.0

        static let disclosureIndicatorTrailingWithInset = 18.0
        static let sectionTitleLeadingWithInset = 20.0
        static let forgetButtonLeadingWithInset = 40.0
        static let forgetButtonTrailingWithInset = 40.0
        static let forgetButtonTopWithInset = 40.0
        static let forgetButtonBottomWithInset = 40.0
        static let forgetButtonHeight = 40.0
        static let forgetButtonCornerRadius = 20.0

        static let soundLibrarySection: Int = 1
        static let soundLibraryRow: Int = 0
    }

    enum Shared {
        static let backButtonImage = "back"
        static let collapseButtonImage = "collapse"
        static let buttonsHeight = 40.0
        static let leaddingAndTrailingEdge = 40.0
        static let closeButton = "close"
    }
}
