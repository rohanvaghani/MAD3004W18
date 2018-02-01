//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct address {
    var street: String = "265 Yorkland Blvd"
    var area: String = "North York"
    var postalCode : String = "M1H1Y1"
}

class  person {
    var firstname: String = "Rohan"
    var lastname: String = "Vaghani"
    var age: Int = 21
    var add = address()
    var total_amount: Int = 2000
}

var personal = person()
print("First name : ",personal.firstname)
print("Last name : ",personal.lastname)
print("Age : ",personal.age)
print("Street : ",personal.add.street)
print("Area : ",personal.add.area)
print("Postal Code : ",personal.add.postalCode)
print("Total Amount : ",personal.total_amount)

//trailing closures

func somefunction(n:Int , closure: (Int) -> Void) {
    closure(n * n * n)
}

somefunction(n : 10) { (cube) in
    print(cube)
}

//An escaping closure is a closure that’s called after the function it was passed to returns. In other words, it outlives the function it was passed to.
func escapingclosure(completionhandler: @escaping () -> Void) {
    print("F1")
    completionhandler()
    return
}

escapingclosure {
    print("F2")
}
