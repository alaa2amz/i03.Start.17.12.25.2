//
//  ResulrCellTableViewCell.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 1/3/18.
//  Copyright © 2018 Arena. All rights reserved.
//

import UIKit

class ResulrCellTableViewCell: UITableViewCell,UIPickerViewDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "gggg"
    }
    
  let picker = InputPicker()
    @IBOutlet weak var leftField: UITextField!
    @IBOutlet weak var rightField: UITextField!
    @IBAction func endLeftEdit(_ sender: Any) {
    }
    
    @IBAction func EndRightEdit(_ sender: Any) {
    }
    override func awakeFromNib() {
        leftField.inputView = picker
        rightField.inputView = picker
        
        super.awakeFromNib()
        // Initialization code
    }

   

}
