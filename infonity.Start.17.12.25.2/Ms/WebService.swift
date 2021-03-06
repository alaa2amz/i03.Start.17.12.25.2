//
//  WebService.swift
//  hhh
//
//  Created by A on 12/24/17.
//  Copyright © 2017 Arena. All rights reserved.
//



import UIKit

class WebService: NSObject {
  
    static var fileName = "webServices.txt"
    static var newLine :Character = "\r\n"
    static var delimiter :Character = ","
    static var baseUrl : URL?
    var actionName = ""
    var actionUrl : String
    var method = ""
    var parameters :[String:String] = [:]
    init(actionName : String , actionUrl : String , method : String , parameters : [String:String]){
        self.actionName = actionName
        self.actionUrl = actionUrl
        self.method = method
        self.parameters = parameters
    }
    static func readConfigureFile() -> [WebService]{
        var webServices = [WebService]()
      let  configureFilePath = Bundle.main.path(forResource: fileName, ofType: nil)
        let configureFile = try! String.init(contentsOfFile: configureFilePath!, encoding: String.Encoding.utf8)
        let linesOfConfigureFile = configureFile.split(separator: WebService.newLine)
        baseUrl = URL(string: String(linesOfConfigureFile[0]))
        WebService.baseUrl = baseUrl
        let restOfConfigureLines = linesOfConfigureFile[1...]
        for line in restOfConfigureLines {
            let fields = line.split(separator: WebService.delimiter)
            let actionName = fields[0]
            let actionUrl = String(fields[1])
            let method = fields[2]
            var parameters = [String:String]()
            let parametersNames = fields[3...]
            for parameter in parametersNames {
                parameters[String(parameter)] = ""
                
                
            }
            let currentWebService = WebService(actionName: String(actionName), actionUrl: actionUrl, method: String(method), parameters: parameters)
            webServices.append(currentWebService)
            
            
        }
        
        return webServices
    }
    static func getRequestsDictionary() -> [String:URLRequest]{
        var requstsDictionary = [String:URLRequest]()
        let webServices = WebService.readConfigureFile()
        for webService in webServices {
           // let url = URL(string: webService.actionName, relativeTo: WebService.baseUrl)
            let url = URL(string: webService.actionUrl, relativeTo: WebService.baseUrl)
            var request = URLRequest(url: url!.absoluteURL)
            request.httpMethod = webService.method
         
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
             request.addValue("json", forHTTPHeaderField: "Data-Type")
            
            request.httpBody = try! JSONSerialization.data(withJSONObject: webService.parameters, options: .sortedKeys)
            requstsDictionary[webService.actionName] = request
        }
       return requstsDictionary
    }
    static func updateParametersFor( request:  inout URLRequest, parameters: [String:String] ){
        
        request.httpBody = try! JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
        
    }
        
    static func getdataOfWebServiceOfActionName(actionName : String ,parameters:
        [String:String],completionHandler:@escaping (Data?, URLResponse?, Error?)->(Void)){
        print("uiopp___++++")
        var d : Data?
        var r : URLResponse?
        var e : Error?
            //let body = try? JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            let requestsDictionary = WebService.getRequestsDictionary()
            var request = requestsDictionary[actionName]!
        
       
            WebService.updateParametersFor(request: &request, parameters: parameters)
        print (request)
            
   
        let task = URLSession.shared.dataTask(with:request ) { (data, response, error) in
                
                print(response!)
        print(String(data: data!, encoding: String.Encoding.utf8) ?? "ooPP")
                print("{}")
        print(response ?? "UUUIIIII")
                d = data
                r = response
                e = error
             completionHandler(d, r, e)
            
            }
        task.resume()
       
        
    }
    
}
