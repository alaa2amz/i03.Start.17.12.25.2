//
//  DiabeticFeet1.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 1/3/18.
//  Copyright © 2018 Arena. All rights reserved.
//

import UIKit

class DiabeticFeet1: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    var lefLeg :Analisys!
    var rightLeg :Analisys!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
         return lefLeg.tests[0].results.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         return lefLeg.tests[0].results[section].header
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell2 =  selectingTable.dequeueReusableCell(withIdentifier: "resultCell")
        return cell2!
    }
    
    @IBOutlet weak var selectingTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         let delegate = UIApplication.shared.delegate as! AppDelegate
        lefLeg = delegate.leftLeg
        rightLeg = delegate.rightLeg
        selectingTable.delegate = self
        selectingTable.dataSource = self
        

        
    }

   

}
