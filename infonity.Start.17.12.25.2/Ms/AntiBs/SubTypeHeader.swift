//
//  SubTypeHeader.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 1/8/18.
//  Copyright © 2018 Arena. All rights reserved.
//

import UIKit

class SubTypeHeader: NSObject {
    let nameLabel : String
    let linksHolders : [LinksHolder]!
    let collapsed = false
    init(nameLabel:String,linksHolders:[LinksHolder]!){
        self.nameLabel = nameLabel
        self.linksHolders = linksHolders
    }
}
