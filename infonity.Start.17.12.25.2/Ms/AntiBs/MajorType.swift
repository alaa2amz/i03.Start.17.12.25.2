//
//  MajorType.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 1/8/18.
//  Copyright © 2018 Arena. All rights reserved.
//

import UIKit

class MajorType: NSObject {
    let nameLabel : String
    let subTypeHeaders : [SubTypeHeader]!
    init(nameLable:String,subTypeHeaders:[SubTypeHeader]!){
        self.nameLabel = nameLable
        self.subTypeHeaders = subTypeHeaders
    }
}
