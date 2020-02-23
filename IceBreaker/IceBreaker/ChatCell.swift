//
//  ChatCell.swift
//  IceBreaker
//
//  Created by Luis Hernandez on 22/02/2020.
//  Copyright © 2020 Luis Hernandez. All rights reserved.
//

import UIKit

class ChatCell: UITableViewCell {

    @IBOutlet weak var receivedMessage: PaddingLabel!
    
    @IBOutlet weak var sentMessage: PaddingLabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = UIColor.clear
        
        self.receivedMessage.layer.backgroundColor = UIColor.white.cgColor
        self.receivedMessage.layer.cornerRadius = 10 
        self.sentMessage.layer.backgroundColor = UIColor(red: 213/255, green: 246/255, blue: 226/255, alpha: 1.0).cgColor
        self.sentMessage.layer.cornerRadius = 10
        
    }
}
