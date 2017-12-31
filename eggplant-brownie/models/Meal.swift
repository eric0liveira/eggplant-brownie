//
//  Meal.swift
//  eggplant-brownie
//
//  Created by Eric de Olivera Rodrigues (@eric0liveira) on 24/12/17.
//  Copyright © 2017 Eric de Olivera Rodrigues (@eric0liveira). All rights reserved.
//

import Foundation

class Meal {
    let name:String
    let happiness:Int
    let items:Array<Item>
    
    init(name:String, happiness:Int, items: Array<Item> = []) {
        self.name = name
        self.happiness = happiness
        self.items = items
    }
    
    func allCalories() -> Double {
        var total = 0.0
        for item in items {
            total += item.calories
        }
        return total
    }
}
