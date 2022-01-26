import UIKit

let isRestaurantOpen = false
if isRestaurantOpen {
  print("Restaurant is open.")
}

let isRestaurantFound = false
if !isRestaurantFound {
  print("Restaurant was not found!")
}

let drinkingAgeLimit = 21
let customerAge = 23
if customerAge < drinkingAgeLimit {
  print("Under age limit.")
} else {
  print("Over age limit.")
}

var trafficLightColor = "Yellow"
if trafficLightColor == "Red" {
  print("Stop")
} else if trafficLightColor == "Yellow" {
  print("Caution")
} else if trafficLightColor == "Green" {
  print("Go")
} else {
  print("Invalid color")
}

trafficLightColor = "Green"
switch trafficLightColor {
case "Red":
  print("Stop")
case "Yellow":
  print("Caution")
case "Green":
  print("Go!")
default:
  print("Invalid Color")
}

var spouseName: String?
spouseName = nil
print(spouseName ?? "No value in spouseName")
if let spouseName = spouseName {
  let greeting = "Hello, " + spouseName
  print(greeting)
}
