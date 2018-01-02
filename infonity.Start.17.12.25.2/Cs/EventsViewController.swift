//
//  EventsViewController.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 1/2/18.
//  Copyright © 2018 Arena. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        addMenuButton()
        
        
        
        let testUIBarButtonItem = UIBarButtonItem(image: UIImage(named: "test.png"), style: .plain, target: self, action: #selector(UIViewController.clickButton))
        // self.view.addSubview(testUIBarButtonItem)
        testUIBarButtonItem.title = "Menu"
        // self.navigationItem.leftBarButtonItem  = testUIBarButtonItem
        self.navigationItem.backBarButtonItem = testUIBarButtonItem

      
    }

    
    

   

}
