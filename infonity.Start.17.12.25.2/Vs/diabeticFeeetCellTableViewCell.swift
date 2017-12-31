//
//  diabeticFeeetCellTableViewCell.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 12/31/17.
//  Copyright © 2017 Arena. All rights reserved.
//

import UIKit

  class  diabeticFeeetCellTableViewCell: UITableViewCell {
    
    @IBAction func editLeftField(_ sender: Any) {
    }
    
    @IBOutlet weak var leftTextField: UITextField!
    @IBOutlet weak var rightTextfield: UITextField!
    
    @IBAction func editRightField(_ sender: Any) {
    }
    
    override func awakeFromNib() {
        
       
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
