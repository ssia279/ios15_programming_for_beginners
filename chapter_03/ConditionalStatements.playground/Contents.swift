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
