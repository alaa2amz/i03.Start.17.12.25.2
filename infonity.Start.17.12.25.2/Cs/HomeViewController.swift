//
//  HomeViewController.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 12/26/17.
//  Copyright © 2017 Arena. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    func getFivCircularLowerFButtonsAroundCenterWithSideMargin(sideMargin : CGFloat) -> [UIButton]
    {
        var buttons = [UIButton]()
        for No in 0..<5
        {
           
            let oneButton = UIButton()
            self.view.addSubview(oneButton)
            oneButton.backgroundColor = UIColor.red
            oneButton.frame.size = CGSize(width: 10, height: 10)
           // let myX :CGFloat =  sideMargin + ((self.view.frame.width - 2 * sideMargin) / 4) *   CGFloat( No)
            let r :CGFloat = (self.view.frame.width - 2 * sideMargin)/2
            
          
            let x1 :CGFloat = 0.0
            let x2:CGFloat =  r * 1 / sqrt(2) / 2
            let x3:CGFloat =  r
            let x4:CGFloat = r + r - (r * 1 / sqrt(2) / 2 )
            let x5:CGFloat = 2 * r
            let xx :[CGFloat] = [x1,x2,x3,x4,x5]
            
            let myX :CGFloat =  sideMargin + CGFloat( xx[No])
            print(String(describing: myX))
            let h :CGFloat = self.view.center.x
            let k :CGFloat = self.view.center.y
            let sq_R_sq_Xh : CGFloat = pow(r, 2) - pow((myX - h), 2)
            let sqrt_sq_R_sq_Xh : CGFloat = sqrt(sq_R_sq_Xh)
            let myY : CGFloat = sqrt_sq_R_sq_Xh + k
            oneButton.center = CGPoint(x: myX, y: myY)
            
            buttons.append(oneButton)
            
            
            
        }
        return buttons
    }

    override func viewDidLoad() {
       // let menuButtons = getFivCircularLowerFButtonsAroundCenterWithSideMargin(sideMargin: 20)
        
        super.viewDidLoad()

       
    }

  
    

   

}
