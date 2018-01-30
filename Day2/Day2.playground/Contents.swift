//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//print multiple line using """
print(str)

let strOne = """
This is first line
This is another line
This is one more line
Ok. Enough of lines
"""

print(strOne)

//print symbol using unicode
var mood = ""
let heart = "\u{1F61C}"
mood = "happy"

if mood.isEmpty {
    print("Cheer up")
}
else {
    print(heart)
}

mood += "cheerful joyful"
print(mood)

//can not change constant heart
//heart += "Be happy"

//print name using string()
var firstname = String()
firstname = "Rohan"
print(firstname)

//print single character using for loop
for i in firstname{
    print(i)
}

//use of string function like count and append
let initial : Character = "R"
firstname.append(initial)
print(firstname)

print("Firstname is \(firstname) which is \(firstname.count) characters long.")

//print character using index and offsetBy
print("start Index:",firstname[firstname.startIndex])
//print("end Index:",firstname[firstname.endIndex])
print("before end Index:",firstname[firstname.index(before: firstname.endIndex)])
print("after start Index:",firstname[firstname.index(after: firstname.startIndex)])
print("5th character:",firstname[firstname.index(firstname.startIndex,offsetBy : 4)])
print("6th character:",firstname[firstname.index(firstname.startIndex,offsetBy : 5)])
print("3rd from last character:",firstname[firstname.index(firstname.endIndex,offsetBy : -3)])

var idx = firstname.index(firstname.startIndex,offsetBy : 3)
print("fourth character:",firstname[idx])

//use of string function like insert,remove
var language = "swift"
print("language : ",language)
language.insert("!", at: language.endIndex)
print("language : ",language)

language.insert(contentsOf: "Java", at: language.endIndex)
print("language : ",language)

language.insert(contentsOf: "is nice than ", at: language.index(language.startIndex,offsetBy : 6))
print("language contentsOf : ",language)

language.remove(at: language.index(before: language.endIndex))
print("language remove : ",language)

//delete range of substring
let range = language.startIndex..<language.endIndex
language.removeSubrange(range)
print("language remove subrange : ",language)

let greeting = "Happy Holidays!"
let index = greeting.index(of:" ") ?? greeting.endIndex
let start = greeting[..<index]
let newGreet = String(start)

print("sub string : ",newGreet)
print("String in uppercase : ",newGreet.uppercased())

if (newGreet == newGreet.uppercased()){
    print("Equal")
}
else{
    print("Not equal")
}

var grade : String?
//grade = "A"
let finalGrade = grade ?? "F"

if(finalGrade.isEmpty){
    print("Not graded yet")
}
else{
    print("Grade : ",finalGrade)
}

/*
let cnt : Int = firstname.count
for index in stride(from: -1, to: cnt, by: 1){
    
}

for index in stride(from: cnt, to: -1, by: -1){
    print("index from last character:",firstname[firstname.index(firstname.endIndex,offsetBy : -index)])
}
*/






















