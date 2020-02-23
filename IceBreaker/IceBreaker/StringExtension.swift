//
//  StringExtension.swift
//  IceBreaker
//
//  Created by Luis Hernandez on 22/02/2020.
//  Copyright © 2020 Luis Hernandez. All rights reserved.
//

import Foundation 

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
