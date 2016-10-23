//
//  ViewController.swift
//  layout
//
//  Created by Nikita Lavrihins on 23/10/16.
//  Copyright © 2016 lavr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPressed(_ sender: AnyObject) {

        
        if let userEnteredText = textField.text {
            let userEnteredInteger = Int(userEnteredText)
            
            
            if let nummber = userEnteredInteger {
                if nummber % 2 == 0 {
                    outputLabel.text = "The nummber: \(nummber) is prime!"
                } else {
                    outputLabel.text = "The nummber: \(nummber) is not prime!"
                }
            } else {
                outputLabel.text = "Please enter the nummber!"
            }
            
        }
        
        
        
        
    }

}

