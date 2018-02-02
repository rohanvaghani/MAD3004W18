//
//  PayRoll.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
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
