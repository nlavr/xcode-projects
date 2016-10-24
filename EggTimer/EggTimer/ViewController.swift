//
//  ViewController.swift
//  EggTimer
//
//  Created by Nikita Lavrihins on 23/10/16.
//  Copyright © 2016 lavr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer();
    var time = 600;
    
    func decreaseTimer() {
        if time > 0 {
            time -= 1
            timerLabel.text = String(time)
        } else {
            timer.invalidate()
        }
    }
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBAction func play(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    @IBAction func pause(_ sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func plusTen(_ sender: AnyObject) {
        time += 10
        timerLabel.text = String(time)

    }
    @IBAction func minusTen(_ sender: AnyObject) {
        if time > 10 {
            time -= 10
            timerLabel.text = String(time)
        }
    }
    
    @IBAction func refresh(_ sender: AnyObject) {
        time = 600
        timerLabel.text = String(time)
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

