//
//  Constants.swift
//  IceBreaker
//
//  Created by Luis Hernandez on 22/02/2020.
//  Copyright © 2020 Luis Hernandez. All rights reserved.
//

import UIKit
import CoreBluetooth

struct Constants {

    static let avatarImagePrefix = "avatar"
    
    static let colors = [
        UIColor(red: 0/255, green: 102/255, blue:155/255, alpha: 1.0),
        UIColor(red: 102/255, green: 204/255, blue:255/255, alpha: 1.0),
        UIColor(red: 0/255, green: 153/255, blue:51/255, alpha: 1.0),
        UIColor(red: 255/255, green: 153/255, blue:0/255, alpha: 1.0),
        UIColor(red: 255/255, green: 51/255, blue:0/255, alpha: 1.0),
        UIColor(red: 255/255, green: 51/255, blue:204/255, alpha: 1.0),
        UIColor(red: 255/255, green: 255/255, blue:0/255, alpha: 1.0),
        UIColor(red: 153/255, green: 51/255, blue:255/255, alpha: 1.0),
        UIColor(red: 153/255, green: 102/255, blue:0/255, alpha: 1.0)
    ]
    
    static let serviceUUID =
        CBUUID(string: "7feeb578-c9b0-49be-996e-3fccca414221")
    static let characteristicTypeUUID =
        CBUUID(string: "00a6bc4f-0bde-469f-ae88-7834c0c55d32")
    static let characteristicPropertiesUUID: CBCharacteristicProperties =
        .write
    static let characteristicPermissionsUUID: CBAttributePermissions =
        .writeable
    
}
