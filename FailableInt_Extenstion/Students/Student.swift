//
//  Student.swift
//  FailableInt_Extenstion
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.

/* Failable Init:


 
 */

import Foundation




class Student :Person
{
    //var sId:Int!      //Is in parent class, but can modify setter/getter
    var sName:String!
    var sMail:String!
    var pwd:String!
    var m1,m2,m3: Int
    var totalMarks:Int                    // Computed value
    {
        return self.m1 + self.m2 + self.m3      //Read only
    }
    
    required init()
    {
        self.sName = String()
        self.sMail = String()
        self.pwd = String()
        self.m1 = 25
        self.m2 = 25
        self.m3 = 25
        super.init()
    }

    init?(sid:Int, sname:String, email:String, pwd:String)
    {
        if sid < 0
        {
            print("Student ID must be greater than 0")
            return nil
        }
        
        if sname.count < 10
        {
            print("Student Name must be >= 10 chars")
            return nil
        }
        
        if email.count < 15
        {
            print("Student eMail must be >=15")
            return nil
        }
        else
        {
            if email.isValidEmail() == false
            {
                print("Invalid Student Email ID")
                return nil
            }
            
        }
        
        if(!pwd.isValidPassword())
        {
            print("Invalid Password format")
            return nil
        }
        
        
        //self.sId = sid
        self.sName = sname
        self.sMail = email
        self.pwd = pwd
        self.m1 = 25
        self.m2 = 25
        self.m3 = 50
        
        super.init(sid: sid)
    }


    
    
    func printData()
    {
        print("Sudent ID    : \(String(describing: self.sid!))")
        print("Sudent Name  : \(String(describing: self.sName!))")
        print("Sudent Mail    : \(String(describing: self.sMail!))")
        print("Password      : \(String(describing: self.pwd!))")
        print("Total Marks   : \(String(describing: self.totalMarks))")
    }
    
    // func display() {}       //Instance method overrides a 'final' instance method
    
        
    
}
