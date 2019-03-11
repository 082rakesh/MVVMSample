//
//  SettingsTableViewCell.swift
//  MVVMSample
//
//  Created by rakesh.mishra on 28/01/19.
//  Copyright © 2019 rakesh.mishra. All rights reserved.
//

import UIKit

/**
 A cell in the Setting group table view.
 - This class includes properties and methods for setting and managing cell content and their respective state.
 */
class SettingsTableViewCell: UITableViewCell {
    static let identifier = "SettingsTableViewCell"
    static let titleCharacterSpacing = 0.5

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!

    // Setting model whose detail to be updated in the UI
    var model: Row? {
        didSet {
            guard let setting = model else { return }
            updateUI(with: setting)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
//        titleLabel.ip_setCharacterSpacing(CGFloat(SettingsTableViewCell.titleCharacterSpacing))
//        detailLabel.ip_setCharacterSpacing(CGFloat(SettingsTableViewCell.titleCharacterSpacing))
    }

    /**
     Updates the cell UI with relevant data from setting model object
     - Parameter setting: Setting options
     */
     private func updateUI(with setting: Row) {
        detailLabel.text = setting.subtitle
        titleLabel.text = setting.title
    }
}
