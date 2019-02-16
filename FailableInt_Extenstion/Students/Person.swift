//
//  Person.swift
//  FailableInt_Extenstion
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Person
{
    var sid:Int!
    
    required init()
    {
        self.sid = 0
        print("From Person Class")
        
    }
    
    init(sid:Int)
    {
        self.sid = sid
        print("From Person Class")
        
    }
    
    final func display()
    {
        
    }
}
