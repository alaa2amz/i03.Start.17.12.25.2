//
//  LogInViewController.swift
//  infonity.Start.17.12.25.2
//
//  Created by A on 12/25/17.
//  Copyright © 2017 Arena. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController,UITextFieldDelegate {
  
    let delegate = UIApplication.shared.delegate as? AppDelegate
    let greenLine = UIView()
    let greenLine2 = UIView()
    //var okToGoHome = false
    var okToGoHome = true
   
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
     @IBOutlet weak var remeberMeSwitch: UISwitch!
    @IBOutlet weak var signInButton: UIButton!
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField == userNameTextField ? self.greenLine.backgroundColor = UIColor.orange : nil
        textField == passwordTextField ? self.greenLine2.backgroundColor = UIColor.orange : nil
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        textField == userNameTextField ? self.greenLine.backgroundColor = UIColor.green : nil
        textField == passwordTextField ? self.greenLine2.backgroundColor = UIColor.green : nil
    }
 
    @IBAction func clickSignIn(_ sender: Any) {
        /////
        //self.showFleetingMessagefor(time: 2.0, andOfText: "The user or password is not correct")
        /////
        var enteredParameters = ["user_name":"","password":""]
        enteredParameters["user_name"] = userNameTextField.text!
        enteredParameters["password"] = passwordTextField.text!
        if !okToGoHome{
        WebService.getdataOfWebServiceOfActionName(actionName: "login", parameters: enteredParameters) { (data, response, error) -> (Void) in
           print(String(data: data!, encoding: String.Encoding.utf8))
            
            let json = try! JSONSerialization.jsonObject(with: data!, options:[]) as! [String:Any?]
            print("///--///")
            print(json)
            //let val = json["result"]! as? String!
           // let num = val as? Int!
            print((json["result"] as! NSString).intValue)
            
            if let result = json["result"] as? NSString {
                if result.intValue == 1   {
                    self.okToGoHome = true
                    DispatchQueue.main.sync {
                         if self.okToGoHome { self.signInButton.sendActions(for: .touchUpInside)}
                    }
                 
                } else{
                   // self.showFleetingMessagefor(time: 2.0, andOfText: "The user or password is not correct")
                }
            }
           
            
           
        }
        }
       
    }
    
   
    @IBAction func toggleRememberMeSwitch(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
     
       
       //green Lines in username and password fields
        greenLine.frame = CGRect(x: 0, y: userNameTextField.frame.height-3, width: 450, height: 3)
        greenLine.backgroundColor = UIColor.green
        greenLine2.frame = CGRect(x: 0, y: passwordTextField.frame.height-3, width: 450, height: 3)
        greenLine.backgroundColor = UIColor.green
        greenLine2.backgroundColor = UIColor.green
        userNameTextField.addSubview(greenLine)
        passwordTextField.addSubview(greenLine2)
        userNameTextField.clipsToBounds = true
        passwordTextField.clipsToBounds = true
        
        //configering delegations
        userNameTextField.delegate = self
        passwordTextField.delegate = self
   
    }

    func showFleetingMessagefor(time: Double,andOfText message:String)
    {
        
        let myView = UIView(frame: CGRect(origin: self.view.center, size: CGSize(width: 200, height: 60)))
        myView.backgroundColor = UIColor.gray
        myView.alpha = 0.6
        myView.layer.cornerRadius = 10
        let label = UILabel(frame: CGRect(origin: self.view.center, size: CGSize(width: 200, height: 60)))
        myView.addSubview(label)
        label.text = message
        label.textColor = UIColor.orange
        label.numberOfLines = 0
        
        self.view.addSubview(myView)
        /////adding constrains by avf
        
        NSLayoutConstraint(item: myView, attribute: .centerX, relatedBy: .equal, toItem: label, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: myView, attribute: .centerY, relatedBy: .equal, toItem: label, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        
        
        
        NSLayoutConstraint(item: self.view, attribute: .centerX, relatedBy: .equal, toItem: myView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: self.view, attribute: .centerY, relatedBy: .equal, toItem: myView, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        
        
        //////////////////////////////
        UIView.animate(withDuration: 0.5, delay: time, options: .curveEaseInOut, animations:{
            myView.alpha = 0
           
            
        }, completion: {(log:Bool) in
             myView.removeFromSuperview()
            
        })
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "toHome" && okToGoHome { return true}
        return false
    }
    

}
