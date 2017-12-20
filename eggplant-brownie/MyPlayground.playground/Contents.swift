//: Playground - noun: a place where people can play

import UIKit

let name:String = "eggplant"
let calorie:Double = 50.5
let happiness:Int = 5
let eggplantIsAVegetable:Bool = false

func helloCalories(){
    let name = "product"
    print("hello calories \(name)")
}

helloCalories()
print(name)

func add(name:String, calories:Double){
    print("adding \(name) with \(calories)")
}

add(name: "brownie", calories: 30.5)
add(name: "pao", calories: 50.3)

let calories = [50.5, 100, 30]

for i in 0...2 {
    print(calories[i])
}

for i in 0...(calories.count - 1) {
    print(calories[i])
}

for calorie in calories{
    print(calorie)
}

func allCalories(calories:Array<Double>) -> Double {
    var total = 0.0
    for cal in calories {
        total += cal
    }
    
    return total
}

print(allCalories(calories: calories))
