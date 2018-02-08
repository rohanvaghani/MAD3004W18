//
//  Manufacturer.swift
//  Day9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Manufacturer {
    var name: String
    
    //DESIGNATED INITIALIZE
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "[Unknown]")
    }
}
