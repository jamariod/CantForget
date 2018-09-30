//
//  ViewController.swift
//  CantForget
//
//  Created by Jamario Davis on 9/30/18.
//  Copyright © 2018 KAYCAM. All rights reserved.
//

import UIKit

class CantForgetViewController: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggs", "Get Milk"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK -Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CantForgetItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell 
    }

    //MARK - TableView Delegate Methods

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}















































