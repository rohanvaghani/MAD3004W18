//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//var str1 : String?        //nil string
//print(str1)

//Dictionaries
var namesOfIntegers = [Int:String]()    //namesOfIntegers is an empty [Int:String dictionary]
namesOfIntegers[16] = "sixteen"     //namesOfIntegers now contains 1 key-value pair
print("namesOfIntegers : \(namesOfIntegers)")

namesOfIntegers[28] = "Twenty Eight"
print("dictionary contains \(namesOfIntegers.count) elements")
print("dictionary : ",namesOfIntegers)

namesOfIntegers = [:]   //namesOfIntegers is once again an empty dictionary of type [Int:String]
print("dictionary contains \(namesOfIntegers.count) elements")
print("namesOfIntegers : ",namesOfIntegers)

if namesOfIntegers.isEmpty {
    print("Dictionary is empty")
}
else {
    print(namesOfIntegers)
}

var airports : [String : String] = ["YYZ":"Toronto Pearson", "DUB":"Dublin"]
print("airports : \(airports)")
print("The airports dictionary contains \(airports.count) items.")  //prints "The airports dictionary contains 2 items."

airports["LHR"] = "London Heathrow"

airports["YYZ"] = "TP International"    //the value for "YYZ" has been changed to "TP International"
airports["AMD"] = "SVP International"   //the value for "AMD" has been changed to "SVP International"
print("airports : ",airports)

let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB")

//print("The old value for DUB was \(oldValue).")   //optional because it can be possible that forKey value is nil or not in list
//prints "The old value for DUB was dublin"

if let airportName = airports["AMD"] {
    print("The name of the airport is \(airportName).")
}
else {
    print("That airport is not in airport dictionary.")
}

airports["Mars"] = "Range Rover"    //"Apple International" is not the real airport for APL, so delete it
print(airports)
airports["Mars"] = nil  //APL has now been removed from the dictionary
print("airports : \(airports)")

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
}
else {
    print("The airports dictionary does not contain a value for DUB.")
}   //prints "The remopved airport's name is Dublin Airport"

for (airportCode, airportName) in airports {
    print(airportCode,airportName)
}

for airportCode in airports.keys {
    print("Airport code : \(airportCode)")
}

for airportName in airports.values {
    print("Airport Name : \(airportName)")
}

let airportCodes = [String](airports.keys)  //airportCodes is ["YYZ","LHR"]
print("airportCodes : \(airportCodes)")

let airportNames = [String](airports.values)    //airportNames is ["Toronto Pearson","London Heathrow"]
print("AirportNames : \(airportNames)")

//<KEY,VALUE> pairs
var d1 : Dictionary<String, String> =  ["India":"Hindi","Canada":"English"]
print(d1)
print(d1.description)
print(d1["India"]!)
print(d1["Canada"]!)
print("USA")
d1["China"] = "Mandarin"
for (k,v) in d1 {
    print("\(k) -> \(v)")
}

d1["Canada"] = "French"
for(k,v) in d1 {
    print("\(k) -> \(v)")
}

var d2 = ["India":"Hindi","Canada":"English"]
for(k,v) in d2 {
    print("\(k) -> \(v)")
}

//Dictionary with any values type
var d3 = [String : AnyObject]()
d3["firstName"] = "Rohan" as AnyObject
d3["lastName"] = "Vaghani" as AnyObject
d3["age"] = Int(50) as AnyObject
d3["salary"] = nil
print("d3",d3)

//Getting as a key, value pair
for(k,v) in d3 {
    print("\(k) -> \(v)")
}

//Declaring tuples
var x = (10,20,"Vaghani")
print(x.0)
print(x.1)
print(x.2)

let http404Error = (404, "Not Found")
print(http404Error)

let (statusCode, statusMessage) = http404Error
print("statusCode : ",statusCode)
print("statusMessage : ",statusMessage)

let (codeOnly, _) = http404Error
print("codeOnly : ",codeOnly)

let errorDescription = (Code : 404, Message : "Not Found")
print(errorDescription.Code,errorDescription.Message)












