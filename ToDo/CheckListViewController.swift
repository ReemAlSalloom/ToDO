//
//  ViewController.swift
//  ToDo
//
//  Created by Reem Saloom on 1/16/19.
//  Copyright © 2019 Reem AlSalloom. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {

    var row0 : checkListItem
    required init?(coder aDecoder: NSCoder) {
        row0 = checkListItem()
        row0.text = "from init"
        super.init(coder: aDecoder)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath)
        {
            if indexPath.row == 0
            {
                row0.checked = true
                cell.accessoryType = .none
            }
            else
            {
                cell.accessoryType = .checkmark
        }
            if cell.accessoryType == .none
            {
                cell.accessoryType = .checkmark
                
            }
            else
            {
                cell.accessoryType = .none
                
            }
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "checkListItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel
        {
           if indexPath.row  == 0
           {
            label.text = row0.text
           
            }
            if indexPath.row % 5 == 1
           {
            label.text = "Hi 1"
            
            }
            if indexPath.row % 5 == 2
           {
            label.text = "Hi 2"
            
            }
            if indexPath.row % 5 == 3
           {
            label.text = "Hi 3"
            
            }
             if indexPath.row % 5 == 4
           {
            
            label.text = "hi 4 "
            }
            
        }
        return cell
    }
}

