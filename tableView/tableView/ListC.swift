//
//  ViewController.swift
//  tableView
//
//  Created by Nikita Lavrihins on 11/10/16.
//  Copyright © 2016 lavr. All rights reserved.
//

import UIKit


class Student {
    var name: String = "Student name"
    var age: Int = 20
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class ListC: UIViewController, UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var students = ["Mārcis", "Vairis", "Vadims", "Silvestrs"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    
    //awlays use this 2 func for UITableViewDelegate , UITableViewDataSource protocls
    
    //1
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    //2
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.students[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "openSeg", sender: students[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let guest = segue.destination as! OpenViewC
        
        guest.student = sender as! String
    }
    
    //delete view
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            self.students.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
}

