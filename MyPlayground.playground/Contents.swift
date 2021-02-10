import UIKit

class spaceship
{

    var fuelLevel = 100
    var name = ""
    
    func cruise()
    {
        // Code to initiate cruising
        print("Cruising initiated for \(name)")
    }

    func thrust()
    {
        // Code to initiate rocket thrusters
        print("Thrusters initiated for \(name)")
    }

}

var ship = spaceship()

ship.name = "Ben"
ship.thrust()
ship.cruise()

print(ship.name)

let x = 11
if (x != 9) && (x != 11) {
    print("Hello")
}
else if x == 11 {
    print("Ah sheet")
}
else {
    print("Poop")
}
