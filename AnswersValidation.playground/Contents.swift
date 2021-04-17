import UIKit

// Validação Evaluation

// Questão 10
let user: [String: Any] = ["name": "root", "uid": 501]

if let userID = user["uid"] as? Int {
    
}

// Questão 13
func say(_ greeting: String?) {
    guard let greeting = greeting else {
//        print("Hello! \(greeting)")
        return
    }
}
say("How are you?")

// Questão 14
class Person {
    var name: String = "Jane"
    init(name: String) {
        self.name = name
    }
}

// Questão 18
func isEmpty(_ str: String?) -> Bool {
    guard str != nil else {
        return false
    }
    return str!.isEmpty
}

// Questão 26
func moveItem(atPath path: String) {
              
              
}
moveItem(atPath: "/tmp/abc.txt")

// Questão 30
let startingPoint = CGPoint(x: 10, y: 10)
let desiredOffset = CGPoint(x: 1, y: 1)

func offset(_ point: CGPoint, by offset: CGPoint = CGPoint.zero) -> CGPoint {
    return point
}
//let newPoint = offset(point: startingPoint, by: desiredOffset)
let newPoint = offset(startingPoint, by: desiredOffset)
//let newPoint = offset(point: startingPoint, by offset: desiredOffset)
//let newPoint = offset(startingPoint, desiredOffset)
let newPoint2 = offset(startingPoint)

// Questão 31
var water = ["Hydrogen", "Oxygen"]
water += ["Hydrogen"]
print(water)

// Questão 32
let name: String? = "John Jacob..."
if let nameLenght = name?.count {
    print("...")
}
