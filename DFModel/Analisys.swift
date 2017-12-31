//
//  Analisys.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 12/31/17.
//  Copyright © 2017 Arena. All rights reserved.
//

import UIKit

class Analisys: NSObject {
    let foot : String
    let tests : [Test]
    init(foot:String,tests:[Test]) {
        self.foot = foot
        self.tests = tests
    }

}
