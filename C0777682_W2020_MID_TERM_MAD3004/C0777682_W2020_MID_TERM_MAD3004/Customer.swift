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
    
    var customerId : Int
    var firstName : String
    var lastName : String
    var bills : Double//dictionary creation
    var totalBillAmount : Double //format the output
    var email : String
    init(customerId : Int,firstName : String, lastName : String, bills: Double,email : String ,totalBillAmount : Double)
    {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.bills = bills
        self.email = email
        self.totalBillAmount = totalBillAmount
    }
   
    func display()
    {
        print("Customer Id          : \(customerId)")
        print("First Name           : \(firstName)")
        print("Last Nname           : \(lastName)")
        print("Full Name            : \(firstName)\(lastName)")
        // full name will be automatic displayed we don't need to initialize it
        
        if isValidEmail() == true
        {
            print("E-Mail Id        : \(email) ")
        }
        else
        {
            print("E-Mail Id            : Email Id not valid")
        }
        print("Bills to be Paid     : \(bills)")
        print("Total bill to pay    : \(totalBillAmount)")
    }
    
}
