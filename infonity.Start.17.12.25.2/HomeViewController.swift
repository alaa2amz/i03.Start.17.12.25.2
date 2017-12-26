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
        for No in 1..<5
        {
            let oneButton = UIButton()
            oneButton.backgroundColor = UIColor.red
            oneButton.frame.size = CGSize(width: 10, height: 10)
            let myX :CGFloat = self.view.frame.width - sideMargin + (self.view.frame.width - 2 * sideMargin / 4) *   CGFloat( No)
            let r :CGFloat = (self.view.frame.width - 2 * sideMargin)/2
            let h :CGFloat = self.view.center.x
            let k :CGFloat = self.view.center.y
            let sq_R_sq_Xh : CGFloat = pow(r, 2) - pow((myX-h), 2)
            let sqrt_sq_R_sq_Xh : CGFloat = sqrt(sq_R_sq_Xh)
            let myY : CGFloat = sqrt_sq_R_sq_Xh + k
            oneButton.center = CGPoint(x: myX, y: myY)
            self.view.addSubview(oneButton)
            buttons.append(oneButton)
            
            
            
        }
        return buttons
    }

    override func viewDidLoad() {
        let menuButtons = getFivCircularLowerFButtonsAroundCenterWithSideMargin(sideMargin: 10)
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
