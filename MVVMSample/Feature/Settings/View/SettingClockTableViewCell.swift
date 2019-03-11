//
//  SettingsTableViewCellWithSwitch.swift
//  MVVMSample
//
//  Created by rakesh.mishra on 31/01/19.
//  Copyright © 2019 rakesh.mishra. All rights reserved.
//

import UIKit

class SettingClockTableViewCell: UITableViewCell {
    static let identifier = "SettingClockTableViewCell"
    static let titleCharacterSpacing = 0.5

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var clockSwitch: UISwitch!

    // Setting model whose detail to be updated in the UI
    var model: Row? {
        didSet {
            guard let setting = model else { return }
            updateUI(with: setting)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeUIContent()
    }

    /**
     Set Switch tint, layer and background color to match the content of the page for off mode.
     */
    func customizeUIContent() {
        clockSwitch.tintColor = UIColor.SampleTest.r242g242b242
        clockSwitch.layer.cornerRadius = clockSwitch.frame.height / 2
        clockSwitch.backgroundColor = UIColor.SampleTest.r242g242b242
    }

    /**
     Updates the cell UI with relevant data from setting model object
     - Parameter setting: Setting options
     */
    private func updateUI(with setting: Row) {
        titleLabel.text = setting.title
    }
}
