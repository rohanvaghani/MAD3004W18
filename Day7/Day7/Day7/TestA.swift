//
//  TestA.swift
//  Day7
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class TestA: IDisplay, IDisplayValue{
    var n1: Int = 20
    //var n1: Int?
    
    //define all function which are protocols
    func displayValue() {
        print("Value of n1 : \(self.n1)")
    }
    
    func display() {
        print("Inside Class TestA")
    }
   
}
