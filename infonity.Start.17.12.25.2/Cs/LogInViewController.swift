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
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField == userNameTextField ? self.greenLine.backgroundColor = UIColor.orange : nil
        textField == passwordTextField ? self.greenLine2.backgroundColor = UIColor.orange : nil
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        textField == userNameTextField ? self.greenLine.backgroundColor = UIColor.green : nil
        textField == passwordTextField ? self.greenLine2.backgroundColor = UIColor.green : nil
    }
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func clickSignIn(_ sender: Any) {
       print("uuu")
        var enteredParameters = ["user_name":"","password":""]
        enteredParameters["user_name"] = userNameTextField.text!
        enteredParameters["password"] = passwordTextField.text!
        WebService.getdataOfWebServiceOfActionName(actionName: "login", parameters: enteredParameters) { (data, response, error) -> (Void) in
            print("{}[]")
            print(data)
            print(response)
            print(error)
            print(String(data: data!, encoding: String.Encoding.utf8) ?? "ooPP")
        }
//        var req = (delegate?.webServices["login"])!
//        print(req)
//        print(req.url?.absoluteString)
//       // WebService.updateParametersFor(request: &req,parameters: enteredParameters)
//        let testBody = String(data: req.httpBody!, encoding: String.Encoding.utf8)
//        print(testBody)
//
//        print(req.httpMethod)
//        print(":::::::::::::")
//        print(req.allHTTPHeaderFields)
        
       // req.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        var shadyReq = URLRequest(url: URL(string:"http://arena-egypt.com/testbed/infontity/sign_in")!)
//        shadyReq.httpMethod = "POST"
        //shadyReq.httpBody = Data(  "{\n  \"password\" : \"123456\",\n  \"user_name\" : \"ibrahim\"\n}"
        //shadyReq.httpBody = String("{\n  \"password\" : \"123456\",\n  \"user_name\" : \"ibrahim\"\n}").data(using: String.Encoding.utf8)
//       shadyReq.httpBody = try! JSONSerialization.data(withJSONObject: enteredParameters, options: .prettyPrinted)
//        shadyReq.addValue("application/json", forHTTPHeaderField: "Content-Type")
        //request.addValue("json", forHTTPHeaderField: "Data-Type")
        
        
        
        
        
       // let task = URLSession.shared.dataTask(with: (delegate?.webServices["login"])!) { (data, response, error) in
//        let task = URLSession.shared.dataTask(with: shadyReq) { (data, response, error) in
//            print(response!)
//            print(String(data: data!, encoding: String.Encoding.utf8))
//
//        }
//        task.resume()
//        print("-+-++--")
//        print(req)
//        print(testBody)
    }
    
    @IBOutlet weak var remeberMeSwitch: UISwitch!
    @IBAction func toggleRememberMeSwitch(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(delegate?.webServices)
        print(WebService.readConfigureFile())
       greenLine.frame = CGRect(x: 0, y: userNameTextField.frame.height-3, width: 450, height: 3)
        greenLine.backgroundColor = UIColor.green
        
        greenLine2.frame = CGRect(x: 0, y: passwordTextField.frame.height-3, width: 450, height: 3)
        greenLine.backgroundColor = UIColor.green
         greenLine2.backgroundColor = UIColor.green
        userNameTextField.addSubview(greenLine)
        passwordTextField.addSubview(greenLine2)
        userNameTextField.delegate = self
        passwordTextField.delegate = self
   
        userNameTextField.clipsToBounds = true
        passwordTextField.clipsToBounds = true
       
       
        userNameTextField.layer.backgroundColor = UIColor.green.cgColor
        userNameTextField.backgroundColor = UIColor.orange
        print("|___A___|")
        print( userNameTextField.backgroundColor === userNameTextField.layer.backgroundColor)

        // Do any additional setup after loading the view.
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
