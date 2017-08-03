import UIKit

protocol Vehicle : CustomStringConvertible {
        
        var isRunning : Bool { get set }
        mutating func start()
        mutating func turnOff()
        
}

struct SportsCar : Vehicle, CustomStringConvertible {
        
        var isRunning: Bool = false
        var description: String {
                
                if isRunning {
                        
                        return "Sports Car Is Running"
                } else {
                        
                        return "Sports Car Off"
                }
        }
        
        mutating func start() {
                
                if isRunning {
                        
                        print("Already Started")
                } else {
                        
                        isRunning = true
                        print("Vroom")
                }
        }
        
        mutating func turnOff() {
                
                if isRunning {
                        
                        isRunning = false
                        print("Crickets")
                } else {
                        
                        print("ALready Dead")
                }
        }
} // Sports Car

class SemiTruck : Vehicle {
        
        var isRunning: Bool = false
        var description: String {
                
                if isRunning {
                        
                        return "Semi Truck Currently Runnin"
                } else {
                        
                        return "Semi is Off"
                }
                
        }
        
        func start() {
                
                if isRunning {
                        
                        print("Already Started")
                } else {
                        
                        isRunning = true
                        print("Rumble")
                }
        }
        
        func turnOff() {
                
                if isRunning {
                        
                        isRunning = false
                        print("put put put .....")
                } else {
                        
                        print("Already Off")
                }
        }
        
        func blowAirHorn () {
                print("TOOOOOT")
        }
} // Semi Truck

var car1 = SportsCar()
var truck1 = SemiTruck()

car1.start()
truck1.start()
truck1.blowAirHorn()

car1.turnOff()
//truck1.turnOff()

var vehicleArray : Array<Vehicle> = [car1, truck1]
for vehicle in vehicleArray {
        
        print("\(vehicle.description)")
}
