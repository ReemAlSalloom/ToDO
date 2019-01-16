//
//  ViewController.swift
//  ToDo
//
//  Created by Reem Saloom on 1/16/19.
//  Copyright © 2019 Reem AlSalloom. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "checkListItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel
        {
           if indexPath.row == 0
           {
            label.text = "Hi"
           
            }
            else
           {
            
            label.text = "hi 1 "
            }
            
        }
        return cell
    }
}

