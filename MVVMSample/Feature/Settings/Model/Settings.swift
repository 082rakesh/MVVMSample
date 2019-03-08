//
//  Settings.swift
//  MVVMSample
//
//  Created by r.f.kumar.mishra on 08/03/19.
//  Copyright © 2019 r.f.kumar.mishra. All rights reserved.
//

import Foundation

/**
 A type representing the individual row of setting list
 */
struct Row {
    let title: String
    let subtitle: String
}

/**
 A type representing the name of each section and list of rows for the respective sections.
 */
struct Section {
    var title: String
    var rows: [Row]
}
