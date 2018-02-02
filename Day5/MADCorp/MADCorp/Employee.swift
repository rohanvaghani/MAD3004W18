//
//  Employee.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Employee  {
    var empID: Int?
    var empName: String?
    var basicPay: Double?
    
    //initializers
    init() {
        empID = 0
        empName = ""
        basicPay=0.0
    }
    
    //parameterized initializer
    init(ID: Int, nm:String, pay:Double) {
        self.empID = ID
        self.empName = nm
        self.basicPay = pay
    }
    
    func display()  {
        print("Employee ID : ",self.empID!)
        print("Employee Name : ",self.empName!)
        print("basic pay : ",self.basicPay!)
    }
    //deinitializer
    deinit {
        print("Object deinitialized")
    }
}
