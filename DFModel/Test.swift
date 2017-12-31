//
//  Test.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 12/31/17.
//  Copyright © 2017 Arena. All rights reserved.
//

import UIKit

class Test: NSObject {
   let header : String
    let results : [Result]
    init(header:String,results:[Result]) {
        self.header = header
        self.results = results
    }
}
