//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func fact(of num : Int) -> Int {
    if num == 1 {
        return 1
    }
    else {
        return num * fact(of: num - 1)
    }
}

let x = 7
let ans = fact(of : x)
print("Factorial of \(x) is \(ans).")
