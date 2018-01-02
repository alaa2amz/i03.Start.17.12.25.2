//
//  AZNavigationController.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 1/2/18.
//  Copyright © 2018 Arena. All rights reserved.
//

import UIKit

class AZNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let testUIBarButtonItem = UIBarButtonItem(title: "menu", style: .plain, target: self, action: #selector(AZNavigationController.clickButton))
        // self.view.addSubview(testUIBarButtonItem)
        let item = UINavigationItem(title: "hhh").leftBarButtonItem = testUIBarButtonItem
        
        
        
      
    }
   
    
    @objc override func clickButton(){
        toggleMenu()
    }



    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
