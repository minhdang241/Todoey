//
//  ViewController.swift
//  Todoey
//
//  Created by BaMinh on 9/29/19.
//  Copyright © 2019 Ba Minh Dang. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    //MARK: - Declare variables
    let itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: - Tableview DataSource Methods
    
    //Return the number of rows for the table
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemArray.count
        
    }
    
    //Provide a cell object for each row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Fetch a cell of the approriate type
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        //Configure the cell's contents
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    
    //MARK: - Handling Row Selection in a table view
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectItem = itemArray[indexPath.row]
        
        //Log the selected item
        print(selectItem)
        
        //Unselect the row, and instead show the state with a checkmark
        tableView.deselectRow(at: indexPath, animated: true)
        
        //check if there is a cell at the selected position
        guard let cell = tableView.cellForRow(at: indexPath) else {return}
        
        //Change the status of the checkmark
        if cell.accessoryType == UITableViewCell.AccessoryType.checkmark {
            
            //Uncheck
            cell.accessoryType = .none
            
        }else {
            
            //Check
            cell.accessoryType = .checkmark
            
        }
        
        
        
    }


}

