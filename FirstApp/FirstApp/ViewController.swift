//
//  ViewController.swift
//  FirstApp
//
//  Created by James Pillow on 08/05/2020.
//  Copyright © 2020 James Pillow. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    
    @IBOutlet weak var leftCard: UIImageView!
    @IBOutlet weak var rightCard: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var cpuScore: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func dealTapped(_ sender: Any)
    {
        let leftNum = Int.random(in: 2...14)
        let rightNum = Int.random(in: 2...14)
        
        leftCard.image  = UIImage(named: "card\(leftNum)")
        rightCard.image = UIImage(named: "card\(rightNum)")
        
        if leftNum > rightNum {
            // Player wins
            leftScore += 1
            playerScore.text = String(leftScore)
        }
        else if leftNum < rightNum {
            // CPU wins
            rightScore += 1
            cpuScore.text = String(rightScore)
        }
        else {
            // Draw
        }
        
    }
    
    
}

