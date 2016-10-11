//
//  ViewController.swift
//  HelloWorld
//
//  Created by Nikita Lavrihins on 09/10/16.
//  Copyright © 2016 lavr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func outputName(_ nameTextField: UITextField) {
        nameLabel.text = "Your name is : \(nameTextField.text)"

    }
    
    @IBAction func outputAge(_ ageTextField: UITextField) {
        ageLabel.text = "Your name is : \(ageTextField.text)"
    }
    
}

