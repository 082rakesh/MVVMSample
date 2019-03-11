//
//  SettingsViewController.swift
//  MVVMSample
//
//  Created by rakesh.mishra on 08/03/19.
//  Copyright © 2019 rakesh.mishra. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var settingTable: UITableView!
    
    private var viewModel = SettingsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = NSLocalizedString("Settings.title", comment: "Settings")
        
        if isViewLoaded {
            setUpTableView()
        } else {
            print("tablevview nil")
        }
    }

    /**
     Sets up the tableview cell used to display the Setting contents
     */
    private func setUpTableView() {
        settingTable.register(UINib(nibName: SettingsTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: SettingsTableViewCell.identifier)
        
        settingTable.register(UINib(nibName: SettingClockTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: SettingClockTableViewCell.identifier)
        
        settingTable.register(UINib(nibName: SettingSectionsHeaderView.identifier, bundle: nil), forHeaderFooterViewReuseIdentifier: SettingSectionsHeaderView.identifier)
        
        settingTable.register(UINib(nibName: SettingsDisconnectTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: SettingsDisconnectTableViewCell.identifier)
    }
    


}
// MARK: - UITableView DataSource method

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSectionsInSettings()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(at: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if viewModel.isSettingsClock(at: indexPath) {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingClockTableViewCell.identifier, for: indexPath) as? SettingClockTableViewCell else { return UITableViewCell() }
            cell.model = viewModel.row(at: indexPath)
            return cell
            
        } else if viewModel.isDisconnectCell(at: indexPath) {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsDisconnectTableViewCell.identifier, for: indexPath) as? SettingsDisconnectTableViewCell else { return UITableViewCell() }
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsTableViewCell.identifier, for: indexPath) as? SettingsTableViewCell else { return UITableViewCell() }
            cell.model = viewModel.row(at: indexPath)
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: SettingSectionsHeaderView.identifier) as? SettingSectionsHeaderView else {
            return nil
        }
        
        headerView.sectionTitle.text = viewModel.sectionTitle(at: section)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat(Constants.Settings.headerHeight)
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
}
