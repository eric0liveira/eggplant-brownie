//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Eric de Olivera Rodrigues (@eric0liveira) on 17/12/17.
//  Copyright © 2017 Eric de Olivera Rodrigues (@eric0liveira). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField : UITextField?
    @IBOutlet var happinessField : UITextField?
    var mealsTable : MealsTableViewController?
    
    @IBAction func add(){
        if (nameField == nil || happinessField == nil) {
            return
        }
        let name:String = nameField!.text!
        
        if let happiness:Int = Int(happinessField!.text!) {
            let meal = Meal(name: name, happiness: happiness)
            
            print("eaten \(meal.name) with happiness \(meal.happiness)!")
            
            if mealsTable == nil {
                return
            }
            
            mealsTable!.add(meal)
            
            if let navigation = navigationController {
                navigation.popViewController(animated: true)
            }
        }
    }

}

