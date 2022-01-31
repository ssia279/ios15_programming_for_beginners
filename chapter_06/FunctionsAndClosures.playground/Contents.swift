import UIKit

var greeting = "Hello, playground"

func serviceCharge_basic() {
  let mealCost = 50
  let serviceCharge = mealCost / 10
  print("Service charge is \(serviceCharge)")
}

serviceCharge_basic()

func serviceCharge(mealCost: Int) -> Int {
  return mealCost / 10
}

let serviceChargeAmount = serviceCharge(mealCost: 50)
print(serviceChargeAmount)

func serviceCharge2(forMealCost mealCost: Int) -> Int {
  return mealCost / 10
}
let serviceChargeAmount2 = serviceCharge2(forMealCost: 50)
print(serviceChargeAmount2)

func calculateMonthlyPayments(carPrice: Double, downPayment: Double, interestRate: Double, paymentTerm: Double) -> Double {
  func loanAmount() -> Double {
    return carPrice - downPayment
  }
  
  func totalInterest() -> Double {
    return interestRate * paymentTerm
  }
  
  func numberOfMonths() -> Double {
    return paymentTerm * 12
  }
  
  return ((loanAmount() + (loanAmount() * totalInterest() / 100)) / numberOfMonths())
}

calculateMonthlyPayments(carPrice: 50000, downPayment: 5000, interestRate: 3.5, paymentTerm: 7.0)

func makePi() -> (() -> Double) {
  func generatePi() -> Double {
    return 22.0 / 7.0
  }
  return generatePi
}

let pi = makePi()
print(pi())

func isThereAMatch(listOfNumbers: [Int], condition: (Int) -> Bool) -> Bool {
  for item in listOfNumbers {
    if condition(item) {
      return true
    }
  }
  return false
}

func oddNumber(number: Int) -> Bool {
  return (number % 2) > 0
}

var numbersList = [2, 4, 6, 7]
isThereAMatch(listOfNumbers: numbersList, condition: oddNumber)

func buySomething(itemValueEntered itemValueField: String, cardBalance: Int) -> Int {
  guard let itemValue = Int(itemValueField) else {
    print("error in item value")
    return cardBalance
  }
  let remainingBalance = cardBalance - itemValue
  return remainingBalance
}

print(buySomething(itemValueEntered: "10", cardBalance: 50))
print(buySomething(itemValueEntered: "blue", cardBalance: 50))

var numbersArray = [2, 4, 6, 7]
let myClosure = { (number: Int) -> Int in
  let result = number * number
  return result
}
let mappedNumber = numbersArray.map(myClosure)

// Simplified closure
var testNumbers = [2, 4, 6, 7]
let mappedTestNumbers = testNumbers.map({(number: Int) -> Int in
  let result = number * number
  return result
})

// even more concise
let mappedTestNumbers1 = testNumbers.map({number in number * number})
mappedTestNumbers1

let mappedTestNumber2 = testNumbers.map{$0 * $0}
mappedTestNumber2
