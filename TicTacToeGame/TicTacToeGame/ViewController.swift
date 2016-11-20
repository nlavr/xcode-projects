//
//  ViewController.swift
//  TicTacToeGame
//
//  Created by Nikita Lavrihins on 20/11/16.
//  Copyright © 2016 lavr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBAction func playAgain(_ sender: AnyObject) {
        
        activePlyer = 1;
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0 - empty, 1- nought, 2 - crosses
        activeGame = true;
        
        for i in 1..<10 {
        
            if let button = view.viewWithTag(i) as? UIButton {
                
                button.setImage(nil, for: [])
            
            }
            
        }
        
        winnerLabel.isHidden = true
        playAgainButton.isHidden = true
        
        winnerLabel.center = CGPoint(x: winnerLabel.center.x, y: winnerLabel.center.y - 500)
        playAgainButton.center = CGPoint(x: playAgainButton.center.x, y: playAgainButton.center.y - 500)
        
    }
    
    
    //1 is nought, 2 is crosses
    var activePlyer = 1;
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0 - empty, 1- nought, 2 - crosses
    let winningCominations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    var activeGame = true;
    
    
    @IBAction func touched(_ sender: AnyObject) {
        
        let activePosition = sender.tag - 1
        var winner = 0;
        
        if gameState[activePosition] == 0 && activeGame {
            
            gameState[activePosition] = activePlyer
            
            if activePlyer == 1 {
                
                sender.setImage(UIImage(named: "nought.png"), for:[])
                activePlyer = 2
                
                
            } else {
                
                sender.setImage(UIImage(named: "cross.png"), for:[])
                activePlyer = 1
                
            }
        }
        
        for combination in winningCominations {
            
            
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]    {
                activeGame = false
               
                
                if gameState[combination[0]] == 1 {
                    
                    winnerLabel.text = "Noughts has won!"
                    winner = 1
                
                } else {
                    
                    winnerLabel.text = "Crosses jhas won!"
                    winner = 2;
                    
                }
                
                
                winnerLabel.isHidden = false
                playAgainButton.isHidden = false
                
                UIView.animate(withDuration: 1, animations: {
                    
                    self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x, y: self.winnerLabel.center.y + 500)
                    
                    self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x, y: self.playAgainButton.center.y + 500)
                    
                })
                
                
                
                
            }
        }
        
        if gameState.contains(0) == false && winner == 0{
            winnerLabel.text = "No one wins!"
            
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            
            UIView.animate(withDuration: 1, animations: {
                
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x, y: self.winnerLabel.center.y + 500)
                
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x, y: self.playAgainButton.center.y + 500)
                
            })
            
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        winnerLabel.isHidden = true
        playAgainButton.isHidden = true
        
        winnerLabel.center = CGPoint(x: winnerLabel.center.x, y: winnerLabel.center.y - 500)
        playAgainButton.center = CGPoint(x: playAgainButton.center.x, y: playAgainButton.center.y - 500)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

