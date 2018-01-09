//
//  LinksHolder.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 1/8/18.
//  Copyright © 2018 Arena. All rights reserved.
//

import UIKit

class LinksHolder: NSObject {
    let nameLabel : String
    let links : [Link]!
    init( nameLabel : String, links:[Link]!){
        self.nameLabel = nameLabel
        self.links = links
    }

}
