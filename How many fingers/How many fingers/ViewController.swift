//
//  ViewController.swift
//  How many fingers
//
//  Created by Armaan Goyal on 01/08/16.
//  Copyright © 2016 Armaan Goyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numFingers: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func guessButton(_ sender: AnyObject) {
        
        let randNum = String(arc4random_uniform(6))
        
        if numFingers.text == randNum{
            resultLabel.text = "You are Correct!"
        }
        else{
            resultLabel.text = "You are wrong! It was \(randNum) ."
        }
        
        
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

