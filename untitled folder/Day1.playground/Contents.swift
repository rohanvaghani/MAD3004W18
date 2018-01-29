//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str)

//use terminator for set value after print statement
print("This is our String : \(str)",terminator: " ")

//use separator for separating multiple prompts
print("1","2","3","4","5",separator: "..")

var n1=10
print("Number 1 : ",n1,"String : ",str)

var n2=20
print("Number 2 : ",n2)

var sum = n1 + n2
print("Sum is : ",sum)
print("Sum = ",n1+n2)

/*
//n1="test"
//print("n1 : ",n1)
*/

var a:Int = 10
print("a = ",a)

var greet:String = "Good Morning"
print("Greetings : ",greet)

var emoji = "😎";
print("its a \(emoji) hour")

let pi = 3.14
//pi = 3.190
print("Pi = ",pi)

//var pi = 10

let myNum:Int?
myNum=10

if myNum != nil{
print("myNum : ",myNum!)
}
else{
    print("myNum is Nil")
}

//optional values
let possibleNumber = "hello" //"Hello"
let convertedNumber:Int?

convertedNumber = Int(possibleNumber)

if convertedNumber != nil{
    print("Converted Number : ", convertedNumber!)
}
else{
    print("Converted Number is nil")
}

for i in 1..<5{
    print("i = ",i)
}

let languages:[String]
languages = ["English","Spanish","French"]

for i in languages{
    print("languages : ", i)
}

let number:[Int]
number = [1,2,3]

var sum1 = 0
for i in number{
    sum1 = sum1+i
}
print("Sum : ", sum1)

var answer: Int = 1
for _ in 1...5{
    answer*=5;
}
print("answer = ", answer)

var Interval: Int = 5
for i in stride(from: 0, to: 50, by: Interval){
    print(i," ",terminator:"")
}
/*
var itr2:Int = 0

while itr2<5{
    print("value:",itr2)
    itr2 += 1
}
*/

var j = 1

while (j < 5){
    print("value of j is \(j)")
    j = j + 1
}

j = 5
repeat{
    print("Repeat : ",j)
    j = j + 2
}while(j <= 10)

/*var fact:Int = 5
if fact <= 10{
    for i in fact{
        fact *= 1
        print(fact)
    }
}
else{
    print(fact*(fact-1))
}
*/

/*switch num1 {
case 100:
    print("Value of num1 is 100")
case 10,15:
    print("Value of num1 is either 10 or 15")
case 5:
    print("Value of num1 is 5")
default:
    print("Default")
}

let countedThings = "moons orbiting saturn"
var naturalCount = String

switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "Several"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
*/

var n = 5
var fact = 1
for i in 1...n{
    fact *= i
}
print("Factor : ",fact)

var t = 1
var m = 5
var an = 1
while(t<=10){
    an = m * t
    t += 1
}

print(an)


















