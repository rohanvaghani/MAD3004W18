//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//single parameter
func welcome(name:String) {
    print("Hello, \(name)")
}

welcome(name: "Rohan Vaghani")
//working with functions

//simple declaration

func add() {
    print("I am in User defined function")
}

add()

func add(n1:Int, n2:Int) {
    var sum : Int
    sum = n1 + n2
    print("Sum : ",sum)
}

add(n1:10, n2:20)
//add(20,10)    //Error
//add(n2:30,n1:40)  //Error

//making parameter label using _
func sub(a:Int, _ b:Int) {
    let c = a - b
    print("Sub : \(c)")
}
sub(a : 30, 20)

func mul(a:Int,b:Int) -> Int {  //return typr declaration
    let c = a * b
    return c
}
var c = mul(a:5,b:10)
print("Mul : \(c)")

//multi return values and define new label name
func swipe(number1 a : Int, b: Int) -> (Int,Int){
    //function parameters are constant by default
    //var temp = a
    //a = b
    //b = temp
    return(b,a)
}

var (a,b) = swipe(number1:10,b:20)
print("a : \(a), b : \(b)")
(_,c) = swipe(number1: 10, b : 20)
print("c : \(c)")

//inout concept
func swipe(aa: inout Double, bb: inout Double) {
    let temp = aa
    aa = bb
    bb = temp
}

var x = 8.0, y = 9.0
swipe(aa: &x, bb: &y)
print("x : \(x), y : \(y)")

//Default parameter
func simpleInterest(amount: Double, noOfYears: Double, rate: Double = 5.0) -> Double {
    let si = amount * rate * noOfYears / 100
    return si
}

print("simple interest : \(simpleInterest(amount: 1000, noOfYears: 5))")
print("simple interest : \(simpleInterest(amount: 1000, noOfYears: 5, rate: 10))")

//variadic parameters
func display(n : Int...) {
    for i in n {
        print(i)
    }
}

display(n: 1,2,3,4,5)
display(n: 10,20,30)

//passing array as parameters
func display(numberValues: Int, parameters: [Int]...) {
    print("number of values : \(numberValues)")
    for i in parameters {
        print("i : \(i)")
    }
}

var arr = [1,2,3,4,5]
display(numberValues: 3, parameters: arr,arr,arr)

//sum of two array
func display(arrayList: [Int]...) -> [Int] {
    var array1 = arrayList[0]
    var array2 = arrayList[1]
    var result = [Int]()


if array1.count == array2.count {
    for i in 0..<array1.count {
        result.append(array1[i] + array2[i])
    }
}
return result
}

var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14]
var a3 = display(arrayList: a1,a2)
print(a3)























































