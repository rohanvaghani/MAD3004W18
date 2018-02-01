//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//classes and structures in swift

//declaring a structure
struct project {
    var title = ""
    var hours = 0
    
    func display() {
        print("Project Title : ",title)
        print("Total work hours required : ",hours)
    }
}

//declaring instance of structure
var LMSProject = project(title: "Moodle", hours: 200)
print(LMSProject)

LMSProject.display()

LMSProject.hours = 300
LMSProject.display()

//var shippingProject = project()

//class declaration
class Manager {
    var name: String = ""
    var productOwner : Bool = true
    var currentProjects = project()
}

//creating instance of class
let mgrCanada = Manager()
mgrCanada.name = "Rohan"
mgrCanada.productOwner = true
mgrCanada.currentProjects = project(title: "Sales Reporting", hours: 20)

print("mgrCanada Name : ",mgrCanada.name)
print("mgrCanada Product Owner : ",mgrCanada.productOwner)
print("mgrCanada Current Project Title : ",mgrCanada.currentProjects.title)
print("mgrCanada Current Project Hours : ",mgrCanada.currentProjects.hours)

//calling function of structure project
mgrCanada.currentProjects.display()

//structures are VALUE TYPES
struct address {
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}

var lambton = address()
print("Lambton : ",lambton)

var cestar = lambton
//let cestar = lambton  //raise error when change the parameter
print("Cestar : ",cestar)

cestar.street = "271 Yorkland Blvd"
cestar.postalCode = "M1H3Y3"
print("Cestar : ",cestar)

print("Lambton : ",lambton)

//classes are REFERENCE TYPES
class Institute {
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}

var myLambton = Institute()
print("myLambton Street : ",myLambton.street)
print("myLambton City : ",myLambton.city)
print("myLambton postalCode : ",myLambton.postalCode)

var myCestar = myLambton
print("myCestar street : ",myCestar.street)
print("myCestar city : ",myCestar.city)
print("myCestar postalCode : ",myCestar.postalCode)

myCestar.street = "271 Yorkland Blvd"
myCestar.postalCode = "M3H3Y3"
print("myCestar street : ",myCestar.street)
print("myCestar postalCode : ",myCestar.postalCode)

print("myLambton Street : ",myLambton.street)
print("myLambton postalCode : ",myLambton.postalCode)

//identical to ===
if myLambton === myCestar{
    print("lmabton and cestar are same")
}
else {
    print("lmabton and cestar are NOT same")
}

var yourCestar = Institute()
if yourCestar === myCestar {
    print("yourCestar and myCestar are same")
}
else {
    print("yourCestar and myCestar are NOT same")
}
