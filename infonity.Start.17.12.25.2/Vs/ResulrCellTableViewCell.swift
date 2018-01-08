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
       
    }
    
    @IBAction func EndRightEdit(_ sender: Any) {
        let rightField = sender as! UITextField
         rightField.inputView?.endEditing(true)
        rightField.endEditing(true)
     
    }
    override func awakeFromNib() {
        
        
        super.awakeFromNib()
        
      
        leftField.autoresizingMask = .flexibleWidth
        leftField.autoresizesSubviews = true
        
        rightField.autoresizingMask = .flexibleWidth
        rightField.autoresizesSubviews = true
        
      
        
        // Initialization code
    }

   

}
