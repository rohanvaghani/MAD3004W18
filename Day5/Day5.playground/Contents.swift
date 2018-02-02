//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//classes

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

var emp1 = Employee()

emp1.empID = 101
emp1.empName = "Rohan"
emp1.basicPay = 5000
emp1.display()

var emp3 = Employee()
emp3.display()

var emp4 = Employee(ID: 104, nm: "Abhishek", pay: 3409.89)
emp4.display()

//inheriting from Employee Class
class PermanentEmployee : Employee{
    var vacationWeeks: Int?
    
    //default initializer
    override init() {
        super.init()
        self.vacationWeeks = 0
    }
    
    //parameterized initializer of subclass
    init(eID: Int, eNM: String, ePay: Double, weeks: Int) {
        super.init(ID: eID, nm: eNM, pay: ePay)
        self.vacationWeeks = weeks
    }
    
    override func display() {
        super.display()
        print("Vacation weeks : ",vacationWeeks!)
    }
}

var obj2 = PermanentEmployee()
obj2.empID = 102
obj2.empName = "Rushang"
obj2.basicPay = 3000
obj2.vacationWeeks = 10
//obj2.display()

var obj5 = PermanentEmployee()
obj5.display()

var obj6 = PermanentEmployee(eID: 106, eNM: "Navjot", ePay: 1320.77, weeks: 1)
obj6.display()

class PayRoll : PermanentEmployee {
    var netPay: Double?
    override init() {
        super.init()
        self.netPay = 0
    }
    
    override init(eID: Int, eNM: String, ePay: Double, weeks: Int) {
        super.init(eID: eID, eNM: eNM, ePay: ePay, weeks: weeks)
        self.netPay = 0
    }
    
    override func display() {
        super.display()
        self.calculate()
        print("Net pay : ",self.netPay!)
    }
    
    func calculate() {
        let vw = self.vacationWeeks!
        if vw > 5 {
            self.netPay! = self.basicPay! - 100
        }
        else {
            self.netPay! = self.basicPay!
        }
    }
}

var obj7 = PayRoll(eID: 107, eNM: "Jaydeep", ePay: 2456.23, weeks: 6)
obj7.display()

//manipulate object array[]
var janPayroll = [PayRoll]()
let noOFEmployee = 2

for i in 0..<2 {
    janPayroll.append(PayRoll(eID: 108, eNM: "RV", ePay: 5555.56, weeks: 7))
    janPayroll[i].display()
}
















