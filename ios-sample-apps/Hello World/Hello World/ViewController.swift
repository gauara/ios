//
//  ViewController.swift
//  Hello World
//
//  Created by Gaurav Sharma on 10/30/16.
//  Copyright © 2016 QuickApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var bit = true
    
    @IBAction func clickMe(_ sender: Any) {
        print("Hello this message is being print from button action")
        print("clicking this buttin should change the ")
        
        if(bit) {
            label.text = "Foo"
        } else {
            label.text = "Bar"
        }
        
        bit = !bit
    }
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textFieldLabel: UILabel!
    
    @IBAction func changeLabel(_ sender: Any) {
    
        textFieldLabel.text = textField.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Hello World !! This is my first iOS program")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

