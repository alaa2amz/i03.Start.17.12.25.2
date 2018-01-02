//
//  menuViewController.swift
//  menu00
//
//  Created by A on 12/20/17.
//  Copyright © 2017 Arena. All rights reserved.
//

import UIKit

class menuViewController: UIViewController,UITableViewDataSource {
    @IBOutlet weak var itemsTable: UITableView!
    var shown = false
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return items[section].headerName
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].headerItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = itemsTable.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = items[indexPath.section].headerItems[indexPath.row]
        return cell!
    }
    
    let items = MenuHeader.getMenuObjects(with: "menuItems")
    override func viewDidLoad() {
        super.viewDidLoad()
        itemsTable.dataSource = self
        itemsTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        


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
