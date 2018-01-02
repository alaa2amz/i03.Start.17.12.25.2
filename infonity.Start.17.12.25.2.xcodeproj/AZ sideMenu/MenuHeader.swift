//
//  MenuHeader.swift
//  menu00
//
//  Created by A on 12/20/17.
//  Copyright © 2017 Arena. All rights reserved.
//

import UIKit

class MenuHeader: NSObject {
    var headerName = ""
    var headerItems = [String]()
    init(headerName:String,headerItems: [String]){
        self.headerName = headerName
        self.headerItems = headerItems
        
    }
    class func getMenuObjects(with fileName: String) -> [MenuHeader]{
       var headers = [MenuHeader]()
        let path = Bundle.main.path(forResource: fileName, ofType: "txt")
        let text = try? String.init(contentsOfFile: path!, encoding: String.Encoding.utf8)
        let lines = text?.components(separatedBy: "\n")
        for line in lines! {
            let pair = line.components(separatedBy: ":")
            let header = pair[0]
            let subItems = pair[1].components(separatedBy: ",")
            let oneMenuHeader = MenuHeader(headerName: header, headerItems: subItems)
            headers.append(oneMenuHeader)
            
        }
        return headers
    }

}
