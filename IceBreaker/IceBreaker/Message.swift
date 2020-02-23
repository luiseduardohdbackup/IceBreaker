//
//  Message.swift
//  IceBreaker
//
//  Created by Luis Hernandez on 22/02/2020.
//  Copyright © 2020 Luis Hernandez. All rights reserved.
//

import Foundation

struct Message {
    
    var text : String
    var isSent : Bool
    
    init(text: String, isSent: Bool) {
        
        self.text = text
        self.isSent = isSent
    }
}
