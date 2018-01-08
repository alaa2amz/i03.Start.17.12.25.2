//
//  EventsViewController.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 1/2/18.
//  Copyright © 2018 Arena. All rights reserved.
//

import UIKit



class EventsViewController: UIViewController {
    @IBOutlet var eventsTable: UITableView!
    @IBOutlet weak var mainViewe: UIView!
    @IBOutlet var calenderView: UIView!
    
    @IBAction func segmentedControl(_ sender: Any) {
        let segmentedControl = sender as! UISegmentedControl
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            calenderView.isHidden = false
            eventsTable.isHidden = true
        case 1:
            calenderView.isHidden = true
            eventsTable.isHidden = false
        default:
            return
           
        }
    }
    
    override func viewDidLoad() {
       
        mainViewe.addSubview(calenderView)
         calenderView.frame = (calenderView.superview?.bounds)!
        mainViewe.addSubview(eventsTable)
         eventsTable.frame = (eventsTable.superview?.bounds)!
        calenderView.isHidden = false
        eventsTable.isHidden = true
        super.viewDidLoad()
        mainViewe = calenderView
        
       // addMenuButton()
        
        
      

      
    }

    
    

   

}
