//
//  License.swift
//  Day9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class License: Person {
    
    var age: Int?
    
    init?(firstName:String, lastName: String, address: String, age:Int) {
        
        if age > 16 {
            super.init(firstName: firstName, lastName: lastName, address: address)
            self.age = age
            
        }
        else{
            return nil
        }
        
        
    }
    
}

