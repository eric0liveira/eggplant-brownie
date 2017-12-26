//
//  MealsTableViewController.swift
//  eggplant-brownie
//
//  Created by Eric de Olivera Rodrigues on 24/12/17.
//  Copyright © 2017 Eric de Olivera Rodrigues. All rights reserved.
//

import UIKit

class MealsTableViewController: UITableViewController {
    var meals = [Meal(name: "Eggplant Brownie", happiness: 5), Meal(name: "Zucchini Muffin", happiness: 3), Meal(name: "Roberta's Cheesecake", happiness: 4)]
    
    func add(meal:Meal) {
        meals.append(meal)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let view = segue.destination as! ViewController
        view.mealsTable = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let meal = meals[row]
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
        cell.textLabel!.text = meal.name
        
        return cell
    }
}
