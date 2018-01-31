//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//******************class activity *********
var firstname = "Rohan"
var length = firstname.count
print(length)
print("*********** print the string ************")
for i in stride(from: 0, to: length, by: 1) {
    let demo = i
    print(firstname[firstname.index(firstname.startIndex,offsetBy: demo)])
}
print("*********** print the string in reverse order ************")
for  i in stride (from: length, to: 0, by: -1 )
{
    let demo = i-length-1
    
    print(firstname[firstname.index(firstname.endIndex,offsetBy: demo)])
}
