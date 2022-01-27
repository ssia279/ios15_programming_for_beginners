import UIKit

var greeting = "Hello, playground"

var shoppingList = ["Eggs", "Milk"]

shoppingList.count
shoppingList.isEmpty
shoppingList.append("Cooking Oil")
shoppingList.insert("Chicken", at: 1)
shoppingList[2]
shoppingList[2] = "Soy Milk"
shoppingList
shoppingList.remove(at: 1)
shoppingList

for shoppingListItem in shoppingList {
  print(shoppingListItem)
}

for shoppingListItem in shoppingList[1...] {
  print(shoppingListItem)
}

var contactList = ["Shah": "+60123456789", "Aamir": "+0223456789"]
contactList.count
contactList.isEmpty
contactList["Jane"] = "+0229876543"
contactList

contactList["Jane"] = nil
contactList

// retain old value
var oldValue = contactList.removeValue(forKey: "Aamir")
oldValue
contactList

for (name, contactNumber) in contactList {
  print("\(name) : \(contactNumber)")
}

var movieGenres: Set = ["Horror", "Action", "Romantic Comedy"]
movieGenres

movieGenres.insert("War")
movieGenres
movieGenres.contains("War")

movieGenres.insert("War")
movieGenres.count

var oldSetValue = movieGenres.remove("Action")
oldSetValue
movieGenres

let movieGenres2: Set = ["Science Fiction", "War", "Fantasy"]
movieGenres.union(movieGenres2)
movieGenres.intersection(movieGenres2)
movieGenres.subtract(movieGenres2)
var symmDiff = movieGenres.symmetricDifference(movieGenres2)
for (values) in symmDiff {
  print(values)
}
