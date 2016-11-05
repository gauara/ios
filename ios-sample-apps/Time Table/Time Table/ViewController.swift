//
//  ViewController.swift
//  Time Table
//
//  Created by Gaurav Sharma on 11/1/16.
//  Copyright © 2016 QuickApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var sliderValueInt = 1
    @IBAction func sliderChanged(_ sender: Any) {
        sliderValueInt = Int(sliderValue.value)
        table.reloadData()
    }
    
    @IBOutlet var sliderValue: UISlider!
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    @IBOutlet var table: UITableView!
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String(sliderValueInt*(indexPath.row + 1))
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

