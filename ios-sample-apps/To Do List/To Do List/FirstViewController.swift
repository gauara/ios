//
//  FirstViewController.swift
//  To Do List
//
//  Created by Gaurav Sharma on 11/3/16.
//  Copyright © 2016 QuickApps. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let itemsObject = UserDefaults.standard.object(forKey: "items") as? NSArray {
            return itemsObject.count
        } else {
            return 0
        }
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = "Dummy item"
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

