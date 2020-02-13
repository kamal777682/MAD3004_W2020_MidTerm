//
//  Customer.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Customer : IDisplay
{
    
    var customerId : String
    var firstName : String
    var lastName : String
    var fullName : String
    var email : String
    var bills : Double//dictionary creation
    var totalBillAmount : Double //format the output
    
    init(customerId : String,firstName : String, lastName : String, fullName : String, email : String, bills: Double,totalBillAmount : Double)
    {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = fullName
        self.email = email
        self.bills = bills
        self.totalBillAmount = totalBillAmount
    }
    
    func display()
    {
        print("Customer Id : \(customerId)")
        print("First Name : \(firstName)")
        print("Last Nname : \(lastName)")
        print("Full Name : \(fullName)")
        print("E-Mail Id : \(email) ")
        print("Bills to be Paid : \(bills)")
        print("Total bill to pay : \(totalBillAmount)")
    }
    
}
