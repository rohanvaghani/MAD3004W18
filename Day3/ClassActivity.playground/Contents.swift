//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var address = [String:AnyObject]()
address["street"] = "265 Yorkland Blvd" as AnyObject
address["area"] = "North York" as AnyObject
address["postal code"] = "M1H1Y1" as AnyObject
var d4 = [String:AnyObject]() //use anyobject to assign any type
d4["firstname"] = "Rohan" as AnyObject // to cast write as
d4["lastname"] = "Vaghani" as AnyObject
d4["age"] = 21 as AnyObject
d4["address"] = address as AnyObject
d4["total amount"] = 2000 as AnyObject
print("d4",d4)

/*
 Tuple :
 We can not change the value in tuple we have index to retrieve values.
 
 Dictionary :
 In dictionary we have key value to retrieve data and it is not ordered
 */
