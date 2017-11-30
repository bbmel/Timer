//
//  ViewController.swift
//  Menu Bars
//
//  Created by Melanie Gravier on 11/29/17.
//  Copyright © 2017 Melanie Gravier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var time = 210 // keeps track of the value the timer is at
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetButton(_ sender: Any) {
        time = 210
        timerLabel.text = String(time)
    }
    
    @IBAction func minusTenButton(_ sender: Any) {
        if time > 10 {
            time -= 10
            timerLabel.text = String(time)
        }
    }
    
    @IBAction func plusTenButton(_ sender: Any) {
        time += 10
        timerLabel.text = String(time)
    }
    
    @IBOutlet var timerLabel: UILabel!
    
    
    
    @IBAction func startButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        // selector - every 1 second, run processTimer()
        print(timer.timeInterval)
    }
    
    @objc func decreaseTimer() {
        print("A second has passed!")
        if time > 0 {
            time -= 1
            timerLabel.text = String(time)
        }
        else {
            timer.invalidate()
        }
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

