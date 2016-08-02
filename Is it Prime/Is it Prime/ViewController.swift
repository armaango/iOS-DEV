//
//  ViewController.swift
//  Is it Prime
//
//  Created by Armaan Goyal on 02/08/16.
//  Copyright © 2016 Armaan Goyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultlabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    @IBAction func isItPrime(_ sender: AnyObject) {
        
        if let userEnteredString = numberTextField.text{
            
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                
                var isPrime = true
                var resultFound = false
                
                if number == 1{
                    isPrime = false
                    resultFound = true
                }
                
                var i = 2
                while i < number && resultFound == false
                {
                    if number % i == 0{
                        isPrime = false
                        resultFound = true
                    }
                    
                    i += 1
                }
                
                if(isPrime){
                    resultlabel.text = "\(number) is Prime"
                }
                else{
                     resultlabel.text = "\(number) is not a Prime"
                }
            }
            else {
                resultlabel.text = "Please enter a positive whole number"
            }
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

