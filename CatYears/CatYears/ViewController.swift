//
//  ViewController.swift
//  CatYears
//
//  Created by Armaan Goyal on 26/07/16.
//  Copyright © 2016 Armaan Goyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var ageField: UITextField!
    @IBAction func submitButton(_ sender: AnyObject) {
        
        let ageInCatYears = Int(ageField.text!)! * 7
        resultLabel.text = String(ageInCatYears)
        
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

