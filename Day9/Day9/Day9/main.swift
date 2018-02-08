//
//  main.swift
//  Day9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

let laptop = Product(name: "Laptop")

if let machine = laptop {
    print("Product name is \(machine.name)")
}

let anonymousMachine = Product(name : "")

if anonymousMachine == nil {
    print("The anonymous machine could not be initialized")
}

let mobile = CartItem(name: "Mobile")

if let pro1 = mobile {
    print("\(pro1.quantity) \(pro1.name)")
}

//let l1 = License(firstName: "Rohan", lastName: "Vaghani", address: "Toronto")
if let license = License(firstName: "Rohan", lastName: "Vaghani",address: "Toronto", age: 15) {
    print("Hey \(license.firstName) \(license.lastName) You are Eligible to apply for license")
}else {
    print("You are not eligible to apply for license")
}

print("\n")
if let license1 = License(firstName: "Shaishav", lastName: "Solanki", address: "Scarborough", age: 22) {
    print("Hey \(license1.firstName) \(license1.lastName) you are eligible")
}else {
    print("You are not eligible")
}


var objManu = Manufacturer()
print("\(objManu.name)")

var objVehicle = Vehicle()
objVehicle.noOfWheels = 4
objVehicle.name = "Tesla"
print("\(objVehicle.noOfWheels),\(objVehicle.name)")

let preference = Preference()
print(preference.description)
