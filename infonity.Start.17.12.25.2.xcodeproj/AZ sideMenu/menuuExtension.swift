//
//  menuuExtension.swift
//  menu00
//
//  Created by A on 12/21/17.
//  Copyright © 2017 Arena. All rights reserved.
//

import Foundation
import UIKit
extension UIViewController {
   
    
    func showDelegateMenu() {
        
      let delegate = UIApplication.shared.delegate as! AppDelegate
       let menu = delegate.menu
        // geting view outside
        menu.view.frame = CGRect(x: -(self.view.frame.width/2), y: 0, width: self.view.frame.width/2, height: self.view.frame.height)
        self.view.addSubview(menu.view)
        //animating
        UIView.animate(withDuration: 0.5, animations: {menu.view.center.x += self.view.frame.width/2 })
        menu.shown = true
        
       
    }
    func hideMenu() {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let menu = delegate.menu
        //animating
        UIView.animate(withDuration: 0.5, animations: {menu.view.center.x -= self.view.frame.width/2 })
        menu.removeFromParentViewController()
        menu.shown = false
    }
        func toggleMenu(){
            let delegate = UIApplication.shared.delegate as! AppDelegate
            let menu = delegate.menu
            if !menu.shown { showDelegateMenu()}else{hideMenu()}
            
        
        
        
    }
}
