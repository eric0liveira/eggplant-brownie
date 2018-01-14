//
//  Dao.swift
//  eggplant-brownie
//
//  Created by Eric de Olivera Rodrigues on 14/01/18.
//  Copyright © 2018 Eric de Olivera Rodrigues. All rights reserved.
//

import Foundation

class Dao {
    let mealsArchive:String
    let itemsArchive:String
    init() {
    
        let userDirs = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        
        let dir = userDirs[0]
        mealsArchive = "\(dir)/eggplant-brownie-meals.dados"
        itemsArchive = "\(dir)/eggplant-brownie-items.dados"
    }
    
    func remove(_ meals: Array<Meal>) {
        NSKeyedArchiver.archiveRootObject(meals, toFile: mealsArchive)
    }
    
    func load() -> Array<Meal> {
        if let loaded = NSKeyedUnarchiver.unarchiveObject(withFile: mealsArchive) {
            let meals = loaded as! Array<Meal>
            return meals
        }
        return []
    }
    func save(_ meals: Array<Meal>) {
        NSKeyedArchiver.archiveRootObject(meals, toFile: mealsArchive)
    }
    
    func load() -> Array<Item> {
        if let loaded = NSKeyedUnarchiver.unarchiveObject(withFile: itemsArchive) {
            let items = loaded as! Array<Item>
            return items
        }
        return []
    }
    
    func save(_ items: Array<Item>) {
        NSKeyedArchiver.archiveRootObject(items, toFile: itemsArchive)
    }
}
