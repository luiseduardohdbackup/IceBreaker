//
//  Peripheral.swift
//  IceBreaker
//
//  Created by Luis Hernandez on 22/02/2020.
//  Copyright © 2020 Luis Hernandez. All rights reserved.
//

import Foundation
import CoreBluetooth

struct Device {
    
    var peripheral : CBPeripheral
    var name : String
    var messages = Array<String>()
    
    init(peripheral: CBPeripheral, name:String) {
        self.peripheral = peripheral
        self.name = name
    }
}
