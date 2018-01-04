//
//  DiabiticFeetCalculator.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 12/31/17.
//  Copyright © 2017 Arena. All rights reserved.
//

import UIKit

class DiabiticFeetCalculator: NSObject {
    static func readDataFile(fileName:String)->Analisys
    {
        
        
       var finaAnaliysis = Analisys( tests: [])
        var finalTests = [Test]()
       
        let  dataFilePath = Bundle.main.path(forResource: fileName, ofType: nil)
         let dataFile = try! String.init(contentsOfFile: dataFilePath!, encoding: String.Encoding.utf8)
        let tests = dataFile.components(separatedBy: "->")
        let tests_clean = tests.filter{ (x) -> Bool in
            !x.isEmpty}
        
        
        for test in tests_clean {
            let testHeader = test.components(separatedBy: "\n")[0]
            var resultsFinal = [Result]()
            let resultsWithHeader = test.components(separatedBy: "*")
            let results = resultsWithHeader.dropFirst()
           
            for result in results {
                var pairs : [(String,Int?)] = []
                let resultHeader = result.components(separatedBy: "\n")[0]
                let possibilities = result.components(separatedBy: "\n").dropFirst()
                
                let possibilities_clean = possibilities.filter{ (x) -> Bool in
                    !x.isEmpty}
                for possiblity in  possibilities_clean  {
                    let possibilityPair = possiblity.components(separatedBy: ":")
                    let pair = (possibilityPair[0],Int(possibilityPair[1]))
                    pairs.append(pair)
                    
                   
                }
               let finalResult = Result(header: resultHeader, pospilities: pairs)
                resultsFinal.append(finalResult)
               
            }
            let testFinal = Test(header: testHeader, results: resultsFinal)
            finalTests.append(testFinal)
           
          
            
        }
          finaAnaliysis = Analisys(tests: finalTests)
        return finaAnaliysis
        
    }

}
