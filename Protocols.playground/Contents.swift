import UIKit

protocol Vehicle : CustomStringConvertible {
          
          var isRunning : Bool { get set }
          var make : String { get set }
          var model : String { get set }
          mutating func start()
          mutating func turnOff()
}

extension Vehicle {
          
          var makeModel : String {
                    
                    return "\(make) \(model)"
          }
          
          mutating func start() {
                    
                    if isRunning {
                              print("Running")
                    } else {
                              
                              isRunning = true
                              print("\(self.description) Fired Up")
                    }
          }
          
          mutating func turnOff() {
                    
                    if isRunning {
                              
                              isRunning = false
                              print("\(self.description) Already Off")
                    } else {
                              print("Already Off")
                    }
          }
}

struct SportsCar : Vehicle, CustomStringConvertible {
          
          var make: String
          var model: String
          
          var isRunning: Bool = false
          
          var description: String {

                    return self.makeModel
          }
}

class SemiTruck : Vehicle {
          
          var make : String
          var model : String
          
          var isRunning: Bool = false
          
          init(isRunning : Bool, make : String, model : String) {
                    
                    self.isRunning = isRunning
                    self.make = make
                    self.model = model
          }
          
          var description: String {
                    
                    return self.makeModel
          }
          
          func blowAirHorn () {
                    print("TOOOOOT")
          }
}

var car1 = SportsCar(make: "Porche", model: "917", isRunning: false)
var truck1 = SemiTruck(isRunning: false, make: "Peterbuilt", model: "Verago")

car1.start()
truck1.start()
truck1.blowAirHorn()

car1.turnOff()
truck1.turnOff()

var vehicleArray : Array<Vehicle> = [car1, truck1]
for vehicle in vehicleArray {
          
          print("\(vehicle.description)")
}

extension Double {
          
          var dollarString : String {
                    
                    return String(format: "$%.02f", self)
          }
}

var pct = 32.15 * 0.15
print(pct.dollarString)


















