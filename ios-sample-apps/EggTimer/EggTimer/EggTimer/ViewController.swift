//
//  ViewController.swift
//  EggTimer
//
//  Created by Gaurav Sharma on 10/31/16.
//  Copyright © 2016 QuickApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var timerPaused = false
    
    
    @IBAction func startTimer(_ sender: Any) {
        if timerPaused == true {
            timerPaused = false
        }
    }
    
    @IBAction func pauseTimer(_ sender: Any) {
        if timerPaused == false {
            timerPaused = true
        }
    }
    
    @IBOutlet var timerLabel: UILabel!
    
    // getTimerValue needs to be defined after timerLabel
    func getTimerValue() -> Int {
        let timerInt = Int(timerLabel.text!)!
        return timerInt
    }
    
    func initTimer() {
        if (timerPaused == false && getTimerValue()  > 0) {
            timerLabel.text = String(getTimerValue() - 1)
        }
    }
    
    @IBAction func timerMinusTen(_ sender: Any) {
        if (timerPaused == false && getTimerValue() - 10 > 0) {
            timerLabel.text = String(getTimerValue() - 10)
        }
    }
    

    @IBAction func timerPlusTen(_ sender: Any) {
        if (timerPaused == false && getTimerValue()  >= 0) {
            timerLabel.text = String(getTimerValue() + 10)
        }
    }
    
    
    // reset timer to the original value of 210
    @IBAction func resetTimer(_ sender: Any) {
        timerLabel.text = String(210)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(initTimer), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

