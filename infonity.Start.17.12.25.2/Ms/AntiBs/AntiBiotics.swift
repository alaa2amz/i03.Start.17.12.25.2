//
//  AntiBiotics.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 1/9/18.
//  Copyright © 2018 Arena. All rights reserved.
//

import UIKit

class AntiBiotics: NSObject {
    static var fileName = "Antibiotic_database_map.csv"
   
    static func getAntiBiotics(fileName:String! = nil)
    {
        var passedFileName = fileName
        if passedFileName == nil { passedFileName = AntiBiotics.fileName}
        let fileNameComponents = fileName.components(separatedBy: ".")
        let typeExtension = fileNameComponents.last
        let fileNameComponentsWithoutExtension = fileNameComponents.dropLast()
        let filePath = Bundle.main.path(forResource: fileNameComponentsWithoutExtension.joined(), ofType: typeExtension)
       // let fileString =try? String(contentsOfFile: filePath!, encoding: String.Encoding.utf8)
        // let linesOfString = fileString?.components(separatedBy: "\n")
       // let headerNamesAsOneString = linesOfString[0]
     //   let arrayOfHeaderNames = headerNamesAsOneString.components(separatedBy: ",")
      //  let linesWithOutHeaderNamesLine = linesOfString.dropFirst()
      //  let
        
        
    }

}
