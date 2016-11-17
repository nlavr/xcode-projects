//
//  ViewController.swift
//  Animations
//
//  Created by Nikita Lavrihins on 17/11/16.
//  Copyright © 2016 lavr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    var count = 1;
    var timer = Timer()
    var isAnimating = false;
    
    func animate() {
        
        image.image = UIImage(named: "frame_\(count)_delay-0.04s.gif")
        
        count += 1
        
        if count == 25 {
            
            count = 0
            
        }
    }
    
    @IBAction func next(_ sender: AnyObject) {
        
        if isAnimating {
            
            isAnimating = false
            
            timer.invalidate()
            
            button.setTitle("start", for: [])
            
        } else {
            
            isAnimating = true
            
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.animate), userInfo: nil, repeats: true)
            
            button.setTitle("stop", for: [])
            
        }
        
        
        
    }
    
    @IBAction func fadeIn(_ sender: AnyObject) {
        
        image.alpha = 0
        
        UIView.animate(withDuration: 1, animations: {
            self.image.alpha = 1
        })
        
    }
    
    @IBAction func slideIn(_ sender: AnyObject) {
        
        image.center = CGPoint(x: image.center.x - 500, y:image.center.y)
        
        UIView.animate(withDuration: 2, animations: {
            
            self.image.center = CGPoint(x: self.image.center.x + 500, y:self.image.center.y)
        
        })
        
    }
    
    @IBAction func grow(_ sender: AnyObject) {
        
        image.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        UIView.animate(withDuration: 1, animations: {
        
            self.image.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        })
        
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

