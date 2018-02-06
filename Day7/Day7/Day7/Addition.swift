//
//  Addition.swift
//  Day7
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Addition: Arithmetic {
    var oper: Character?
    
    /*
    init(oper: Character) {
        self.oper = oper
    }
     */
    
    required init(n1: Int, n2: Int) {
        super.init(n1: n1, n2: n2)
    }
    
    func calculate() {
        print("calling  function")
    }
    
}
