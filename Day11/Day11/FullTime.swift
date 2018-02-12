//
//  FullTime.swift
//  Day11
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

private class FullTime: Student {
    var subject: String?
    
    override init() {
        self.subject = "Fulltime Subject"
    }
    
    private func setSubject(subject: String) {
        self.subject = subject
    }
    
    //private func display()
    fileprivate override func display() {
        
        //Not possible and not inherited
        //super.display()
        
        print("I am method of FulllTime Class")
        super.display(message: "FILE PRIVATE")
    }
}
