//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by 김진선 on 2017. 7. 30..
//  Copyright © 2017년 김진선. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerImageView: UIImageView!
    
    let ballImages = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        askActionButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        askActionButton()
        
    }
    
    func askActionButton() {
        
        randomBallNumber = Int(arc4random_uniform(4))
        answerImageView.image = UIImage(named: ballImages[randomBallNumber])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        askActionButton()
    }

}

