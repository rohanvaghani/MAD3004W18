//
//  main.swift
//  Day7
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

var obj1 = TestA()
//obj1.n1 = 20
obj1.display()
obj1.displayValue()

var obj2 : IDisplay = TestA()
obj2.display()

//type cast
obj2 = obj1 as TestA
obj2.display()

var obj3 = TestB()
obj3.n1 = 30
obj3.n2 = 40
obj3.display()
obj3.displayValue()

var objArith = Arithmetic(n1: 10,n2: 20)
//objArith.calculate()

var objOpration = Addition(n1: 15, n2: 25)
objOpration.calculate()

//using double extension
let oneInch = 25.4.mm
print("One Inch is \(oneInch) meters")
let threeFeet = 3.ft
print("Three Feet is \(threeFeet) meters")

let aMarathon = 42.km + 195.m
print("A marathon is \(aMarathon) meters long")

var s = "Hello"
print("lengths : ",s.length)
print(s.contains(s: "el"))
print("vowels : ",s.vowels)
print("consonants : ",s.consonants)






