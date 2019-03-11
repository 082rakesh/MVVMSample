//
//  SettingViewModel.swift
//  MVVMSample
//
//  Created by rakesh.mishra on 08/03/19.
//  Copyright © 2019 rakesh.mishra. All rights reserved.
//

import Foundation

/**
 This view model represents the setting screen and incorporated all the logic to load, fetch and manages the Setting options within the setting screen.
 */
struct SettingsViewModel {
    /// Array that holds the list of setting group read from the localized file
    private var sections = [Section]()
    
    init() {
        loadFirstSectionRows()
        loadSecondSectionRows()
        loadThirdSectionRows()
    }
    
    /**
     Helper method to add sections for setting table
     - Parameter section, title : section title and list of rows of each section
     */
    private mutating func addSection(section: String, rows: [Row]) {
        
        let settingContent = Section(title: section, rows: rows)
        sections.append(settingContent)
    }
    
    /**
     Method to prepare data for about section and their respective rows
     */
    private mutating func loadFirstSectionRows() {
        addSection(section: NSLocalizedString("Settings.section.1", comment: "Section 1"), rows: [
            Row(title: NSLocalizedString("Settings.section1.title1", comment: "Title 1"), subtitle: NSLocalizedString("Settings.section1.title2", comment: "Title 2")),
            Row(title: NSLocalizedString("Settings.section1.title3", comment: "Title 3"), subtitle: ""),
            Row(title: NSLocalizedString("Settings.section1.title4", comment: "Title 4"), subtitle: ""),
            Row(title: NSLocalizedString("Settings.section1.title5", comment: "Title 5"), subtitle: "")])
    }
    
    /**
     Method to prepare data for options section and their respective rows
     */
    private mutating func loadSecondSectionRows() {
        
        addSection(section: NSLocalizedString("Settings.section.2", comment: "Section 2"), rows: [
            Row(title: NSLocalizedString("Settings.section2.title1", comment: "Phone-Free Mode"), subtitle: ""),
            Row(title: NSLocalizedString("Settings.section2.title2", comment: "Notifications"), subtitle: ""),
            Row(title: NSLocalizedString("Settings.section2.title3", comment: "Sleep Timer"), subtitle: NSLocalizedString("Settings.section2.title4", comment: "45 Minutes")),
            Row(title: NSLocalizedString("Settings.section2.title5", comment: "Entrainment Library"), subtitle: ""),
            Row(title: NSLocalizedString("Settings.section2.title6", comment: "24-Hour Clock"), subtitle: "")
            ])
    }
    
    /**
     Method to prepare data for troubleshooting section and their respective rows
     */
    private mutating func loadThirdSectionRows() {
        
        addSection(section: NSLocalizedString("Settings.section.3", comment: "Section 3"), rows: [
            Row(title: NSLocalizedString("Settings.section3.title1", comment: "Title"), subtitle: ""),
            Row(title: NSLocalizedString("Settings.section3.title2", comment: "Title"), subtitle: ""),
            Row(title: NSLocalizedString("Settings.section3.title3", comment: "Title"), subtitle: NSLocalizedString("Settings.section3.subtitle1", comment: "SubTitle")),
            Row(title: NSLocalizedString("Settings.section3.title2", comment: "Title"), subtitle: ""),
            ])
    }
}

extension SettingsViewModel {
    
    /**
     Returns number of group of settings available for display
     */
    func numberOfSectionsInSettings() -> Int {
        return sections.count
    }
    
    /**
     Return the name of group based on the index
     - Parameter indexPath: Accept the index of table secton
     - Return String: Name of the group of accepted section
     */
    func sectionTitle(at index: Int) -> String {
        return sections[index].title
    }
    
    /**
     Return the total count of each setting section
     - Parameter section: Accept the index of table secton
     - Return Int: total row count for each section
     */
    func numberOfRows(at section: Int) -> Int {
        return sections[section].rows.count
    }
    
    /**
     Return the list of all setting for each section
     - Parameter section: Accept the index of table secton
     - Return SettingsModel: The list of all settings
     */
    func row(at indexPath: IndexPath) -> Row {
        return sections[indexPath.section].rows[indexPath.row]
    }
    
    /**
     This method return flag whether clock cell needs to be load with switch or not.
     - Parameter section: Accept the index path of tapped cell
     - Return Bool: True/False
     */
    func isSettingsClock(at indexPath: IndexPath) -> Bool {
        if indexPath.section == Constants.SettingsSection.SectionTwoIndex.rawValue && indexPath.row == Constants.SettingsRows.twentyFourHourClockRowIndex.rawValue {
            return true
        } else {
            return false
        }
    }
    
    /**
     This method used to load the disconnect button
     - Parameter section: Accept the index path of tapped cell
     - Return Bool: True/False
     */
    func isDisconnectCell(at indexPath: IndexPath) -> Bool {
        
        print(indexPath)
        if indexPath.section == 2 && indexPath.row == 3 {
            return true
        }
        return false
    }
}
