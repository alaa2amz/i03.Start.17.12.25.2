//
//  Result.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 12/31/17.
//  Copyright © 2017 Arena. All rights reserved.
//

import UIKit

class Result: NSObject {
    let header : String
    var outcum : (String,Int)!
    let pospilities : [(String,Int?)]
    init(header:String,pospilities:[(String,Int?)]) {
        self.header = header
        self.pospilities = pospilities
    }

}
