import UIKit

class Animal {
  var name: String = ""
  var sound: String = ""
  var numberOfLegs: Int = 0
  var breathesOxygen: Bool = true
  
  init(name: String, sound: String, numberOfLegs: Int, breathesOxygen: Bool) {
    self.name = name
    self.sound = sound
    self.numberOfLegs = numberOfLegs
    self.breathesOxygen = breathesOxygen
  }
  
  func makeSound() {
    print(self.sound)
  }
  
  func description() -> String {
    return "name: \(self.name) sound: \(self.sound) numberOfLegs: \(self.numberOfLegs) breathesOxygen: \(self.breathesOxygen)"
  }
}

let cat = Animal(name: "Cat", sound: "Mew", numberOfLegs: 4, breathesOxygen: true)
print(cat.name)
print(cat.sound)
print(cat.numberOfLegs)
print(cat.breathesOxygen)
cat.makeSound()

class Mammal: Animal {
  let hasFurOrHair: Bool = true
  
  override func description() -> String {
    return super.description() + " hasFurOrHair: \(self.hasFurOrHair)"
  }
}

let cat1 = Mammal(name: "Cat", sound: "Mew", numberOfLegs: 4, breathesOxygen: true)
print(cat1.description())
cat1.makeSound()

struct Reptile {
  var name: String
  var sound: String
  var numberOfLegs: Int
  var breathesOxygen: Bool
  let hasFurOrHair: Bool = false
  
  func makeSound() {
    print(self.sound)
  }
  
  func description() -> String {
    return "Structure: Reptile name: \(self.name) sound: \(self.sound)"
  }
}

var snake = Reptile(name: "Snake", sound: "Hiss", numberOfLegs: 0, breathesOxygen: true)
print(snake.description())
snake.makeSound()

struct SampleValueType {
  var sampleProperty = 10
}

var a = SampleValueType()
var b = a
b.sampleProperty = 20
print(a.sampleProperty)
print(b.sampleProperty)

class SampleReferenceType {
  var sampleProperty = 10
}

var c = SampleReferenceType()
var d = c
c.sampleProperty = 20
print(c.sampleProperty)
print(d.sampleProperty)

enum TrafficLightColor {
  case red
  case yellow
  case green
  
  func description() -> String {
    switch self {
    case .red:
      return "red"
    case .yellow:
      return "yellow"
    case .green:
      return "green"
    }
  }
}
var trafficLightColor = TrafficLightColor.red
print(trafficLightColor.description())
