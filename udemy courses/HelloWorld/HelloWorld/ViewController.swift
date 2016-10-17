//
//  ViewController.swift
//  HelloWorld
//
//  Created by Nikita Lavrihins on 17/10/16.
//  Copyright © 2016 lavr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonTapped(_ sender: AnyObject) {
        label.text = "Hi, " + textField.text!
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

