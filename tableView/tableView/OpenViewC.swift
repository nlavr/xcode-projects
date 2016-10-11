//
//  OpenViewC.swift
//  tableView
//
//  Created by Nikita Lavrihins on 11/10/16.
//  Copyright © 2016 lavr. All rights reserved.
//

import UIKit

class OpenViewC: UIViewController {
    
    var student = "Yest"
    
    @IBOutlet weak var studentName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentName.text = student;
    }

}
