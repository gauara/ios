//
//  ViewController.swift
//  TryCustomLayOut
//
//  Created by Gaurav Sharma on 11/3/16.
//  Copyright © 2016 QuickApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("trying custom lay out")
        
        
        let loginTitle = UILabel()
        loginTitle.text = "Faro Login"
        loginTitle.translatesAutoresizingMaskIntoConstraints = false
        loginTitle.sizeToFit()
        self.view.addSubview(loginTitle)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

