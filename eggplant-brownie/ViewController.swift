//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Eric de Olivera Rodrigues on 17/12/17.
//  Copyright © 2017 Eric de Olivera Rodrigues. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField : UITextField!
    @IBOutlet var happinessField : UITextField!
    
    @IBAction func add(){
        let name = nameField.text
        let happiness = happinessField.text
        print("eaten \(name) with happiness \(happiness)!")
    }

}

