//
//  Customer.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Customer : IDisplay,CalculateTotalBill
{
   
    var customerId : Int
    var firstName : String
    var lastName : String
    lazy var bills = [String : Bill]()   //dictionary creation
    var totalBillAmount : Double
    {
        return self.calculateBill()
    }
    var email : String
    init(customerId : Int,firstName : String, lastName : String, bills: [String : Double],email : String ,totalBillAmount : Double)
    {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
    
    func addBill(bill :Bill,billID : String)
    {
        bills.updateValue(bill, forKey: billID)
    }
    
      func calculateBill()-> Double
      {
          var t : Double?
          for b in self.bills
          {
              t = (t ?? <#default value#>) + b.value
          }
          return t
      }
    func display()
    {
        print("Customer Id          : \(customerId)")
        print("Customer Name            : \(firstName)\(lastName)")
        // full name will be automatic displayed we don't need to initialize it
        
        if isValidEmail() == true
        {
            print("E-Mail Id        : \(email) ")
        }
        else
        {
            print("E-Mail Id            : Email Id not valid")
        }
        print("Bills to be Paid ")
        print("---------------------------------------------")
        for b in self.bills
        {
            print(b.key,":" , b.value)
        }
        print("---------------------------------------------")
        print("Total bill to pay    : \(totalBillAmount)")
        print("---------------------------------------------")
    }
  
  
}
