//
//  SecondViewController.swift
//  To Do List
//
//  Created by Gaurav Sharma on 11/3/16.
//  Copyright © 2016 QuickApps. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var items = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UserDefaults.standard.set(items, forKey: "items")
    }

    @IBOutlet var itemTextField: UITextField!
    
    @IBAction func addItem(_ sender: Any) {
        let item = itemTextField.text
        let toDoItemsObject = UserDefaults.standard.object(forKey: "items")
        if let toDoItems = toDoItemsObject as? NSArray {
            print(item!)
            print(toDoItems)
            items = toDoItems as! [String]
            items.append("hello")
            UserDefaults.standard.set(items, forKey: "items")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

