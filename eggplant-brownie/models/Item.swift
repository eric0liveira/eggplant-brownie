//
//  Item.swift
//  eggplant-brownie
//
//  Created by Eric de Olivera Rodrigues (@eric0liveira) on 24/12/17.
//  Copyright © 2017 Eric de Olivera Rodrigues (@eric0liveira). All rights reserved.
//

import Foundation

class Item: Equatable {
    let name:String
    let calories:Double
    
    init(name:String, calories:Double) {
        self.name = name
        self.calories = calories
    }
}
func ==(first:Item, second:Item) -> Bool {
    return first.name == second.name && first.calories == second.calories
}
