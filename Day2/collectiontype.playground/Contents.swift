//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//array declaration
var a = [10,20,30,40,50]
print("a[0] : \(a[0])")
print("a : ",a)


let j1 = [10,20]
print("j1 : ",j1)

//use methods to add values
var b = [Int]();
print("Size of array b : \(b.count)")
b.append(100)
print("b[0] : \(b[0])")

b.append(1000)
print("b : ",b)

b[0]=1000
print("b[0] : \(b[0])")

/* index out of range error
b[2]=500
print("b : ",b)
print("Size of array b : \(b.count)")
*/

//assigning the file default value
var num1 = [Int](repeating : 1,count : 3)
print("num1 array : \(num1)")
var num2 = [Int](repeating : 5,count : 3)
print("num2 array : \(num2)")
var numMerge = num1 + num2
print("num1 array : \(numMerge)")

//Declare to store any data type values
var c = [Any]();
print("size of array c : \(c.count)")
c.append(100)
c.append("Patel")
c.append(100.23)
print("C array : \(c)")

var x = a[1...3]
for t in x {
    print("x : \(t)")
}

//string array and for-each with (KEY,VALUE)
var shoppingList : [String] = ["Eggs","Milk"]
for (index,value) in shoppingList.enumerated() {
    print("Item \(index): \(value)")
}

print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    print("The shopping list is empty.")
}
else {
    print("The shopping list is not empty.")
}
shoppingList.append("Flour")
print("Shoppinglist array : \(shoppingList)")

shoppingList  += ["Chocolate Spread","Cheese","Butter"]
print("Shoppinglist array : \(shoppingList)")
//shoppingList[4...6] = ["Bananas","Apples"]    //Error
shoppingList.insert("Maple Syrup", at: 0)
let mapleSyrup = shoppingList.remove(at: 2)
let apples = shoppingList.removeLast()
print("Shopping list array : \(shoppingList)")

//SET
//declaring Set in Swift

var grades : Set<Character> = []
grades.insert("A")
grades.insert("B")
print("grades : \(grades)")
print("grades no of elements : ",grades.count)

//requires a hashable values
//var gradeType : Set <Any> = []

var favouriteGenres : Set<String> = ["Rock","Classical","Hip Hop"]
print("Favourite Genres : \(favouriteGenres)")

print("I have \(favouriteGenres.count) favourite music genres.")
if favouriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
}
else {
    print("I have particular music preferences.")
}
favouriteGenres.insert("Jazz")
print("Favourite Genres : \(favouriteGenres)")

if let  removedGenre = favouriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
}
else {
    print("I never much cared for that.")
}
print("FavouriteGenres : \(favouriteGenres)")
for genre in favouriteGenres.sorted() {
    print("\(genre)")
}

let oddDigits : Set = [1,3,5,7,9]
let evenDigits : Set = [0,2,4,6,8]
let singleDigitPrimeNumbers : Set = [2,3,5,7]

print(oddDigits.union(evenDigits).sorted())
print(oddDigits.intersection(evenDigits).sorted())
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

let houseAnimals : Set = ["🐶","🐱"]
let farmAnimals : Set = ["🐃","🐄","🐏","🐶","🐱"]
let cityAnimals : Set = ["🐵","🐕"]

print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))
