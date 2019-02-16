//
//  main.swift
//  FailableInt_Extenstion
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

var s1:Student
s1 = Student()

var s2:Student?
s2 = Student(sid: -2, sname: "Arthur", email: "abc@abc.com",pwd: "test_123")
s2?.printData()

if let s = s2
{
    print("Student object created")
    s.printData()
}

var s3:Student?
s3 = Student(sid: 100, sname: "Arthur Gonzalez", email: "myname@domain.com",pwd: "Aa_a1234%")
s3?.printData()

if let s = s3
{
    //s.totalMarks = 200               //Not allowed cos is a computed value
    print("Student object created")
    print(s.totalMarks)
    s.printData()
}

