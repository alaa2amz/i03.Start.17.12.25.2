//
//  ResulrCellTableViewCell.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 1/3/18.
//  Copyright © 2018 Arena. All rights reserved.
//

import UIKit

class ResulrCellTableViewCell: UITableViewCell {
 
  
    
   
    
   
    
 
    @IBOutlet weak var leftField: UITextField!
    @IBOutlet weak var rightField: UITextField!
    @IBAction func endLeftEdit(_ sender: Any) {
        let leftField = sender as! UITextField
        leftField.inputView?.endEditing(true)
        leftField.endEditing(true)
        leftField.text = leftResult[indexRow].pospilities[picker.picker.selectedRow(inComponent: 0)].0
    }
    
    @IBAction func EndRightEdit(_ sender: Any) {
        let rightField = sender as! UITextField
         rightField.inputView?.endEditing(true)
        rightField.endEditing(true)
        leftField.text = rightResult[indexRow].pospilities[picker.picker.selectedRow(inComponent: 0)].0
    }
    override func awakeFromNib() {
        
        
        super.awakeFromNib()
        
        leftField.inputView = picker
        rightField.inputView = picker
        leftField.autoresizingMask = .flexibleWidth
        leftField.autoresizesSubviews = true
        
        rightField.autoresizingMask = .flexibleWidth
        rightField.autoresizesSubviews = true
        
        picker.picker.dataSource = self
        picker.picker.delegate = self
        leftLeg = delegate?.leftLeg
        rightLeg = delegate?.rightLeg
        
        // Initialization code
    }

   

}
