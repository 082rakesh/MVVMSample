//
//  Settings.swift
//  MVVMSample
//
//  Created by rakesh.mishra on 08/03/19.
//  Copyright © 2019 rakesh.mishra. All rights reserved.
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
