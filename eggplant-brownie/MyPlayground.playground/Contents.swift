import UIKit

class Meal{
    var happiness:Int = 5
    var name:String = "eggplant brownie"
}

let brownie = Meal()
print(brownie.happiness)
print(brownie.name)

brownie.happiness = 4

print(brownie.happiness)

var name:String?
name = "eggplant brownie"
print(name)
print(name!.uppercased())

if let name = name {
    print(name.uppercased())
}
