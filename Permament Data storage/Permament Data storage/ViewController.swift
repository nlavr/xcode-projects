//
//  ViewController.swift
//  Permament Data storage
//
//  Created by Nikita Lavrihins on 24/10/16.
//  Copyright © 2016 lavr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nummberField: UITextField!
    
    @IBAction func save(_ sender: AnyObject) {
        UserDefaults.standard.set(nummberField, forKey: "nummber")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let nummberObject = UserDefaults.standard.object(forKey: "nummber")
        
        if let nummber = nummberObject as? String {
            nummberField.text = nummber
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

