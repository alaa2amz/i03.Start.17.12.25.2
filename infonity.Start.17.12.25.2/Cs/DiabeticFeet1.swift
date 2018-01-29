//
//  DiabeticFeet1.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 1/3/18.
//  Copyright © 2018 Arena. All rights reserved.
//

import UIKit

class DiabeticFeet1: UIViewController,UITableViewDelegate,UITableViewDataSource,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField) {
        let cell = textField.superview as! ResulrCellTableViewCell
        let index = selectingTable.indexPath(for: cell)
        if textField == cell.leftField { feet1.results[(index?.section)!].leftFootOutcum.1 = Int(textField.text!)!
            print(feet1)
            
        }
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    
   
     let picker = Bundle.main.loadNibNamed("InputPicker", owner: nil, options: nil)?.first as! InputPicker
    var feet1 : Test!
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
         return feet1.results.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         return feet1.results[section].header
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell =  selectingTable.dequeueReusableCell(withIdentifier: "resultCell") as! ResulrCellTableViewCell
        cell.leftField.delegate = self
        cell.rightField.delegate = self
       
        return cell
    }
    
    @IBOutlet weak var selectingTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         let delegate = UIApplication.shared.delegate as! AppDelegate
         feet1 = delegate.diabeticFeetObject.tests[0]
    
        selectingTable.delegate = self
        selectingTable.dataSource = self
        

        
    }

   

}
