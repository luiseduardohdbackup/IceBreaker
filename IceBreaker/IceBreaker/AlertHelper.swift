//
//  File.swift
//  IceBreaker
//
//  Created by Luis Hernandez on 22/02/2020.
//  Copyright © 2020 Luis Hernandez. All rights reserved.
//

import Foundation
import UIKit

class AlertHelper {
    static let alert_title : String = "_alert_title".localized
    static let alert_ok : String = "_alert_ok".localized
    
    static func warn(delegate: UIViewController, message: String) {
        
        let alert = UIAlertController(title: alert_title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: alert_ok, style: UIAlertAction.Style.default, handler: nil))
        delegate.present(alert, animated: true, completion: nil)
    }
    
}
