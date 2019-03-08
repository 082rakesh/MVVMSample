//
//  SettingDisconnectFooterView.swift
//  IAPDemo
//
//  Created by r.f.kumar.mishra on 05/02/19.
//  Copyright © 2019 Accenture. All rights reserved.
//

import UIKit

class SettingsDisconnectTableViewCell: UITableViewCell {
    static let identifier = "SettingsDisconnectTableViewCell"

    @IBOutlet weak var disconnectButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        setupDisconnectButton()
    }

    /**
     Sets up the UI of Disconnect button
     */
    private func setupDisconnectButton() {
        disconnectButton.layer.cornerRadius = disconnectButton.frame.height/2.0
        disconnectButton.setTitle(NSLocalizedString(
            "Settings.done",
            comment: "Done"), for: .normal)
    }
}
