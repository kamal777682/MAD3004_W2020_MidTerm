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
        for i in bills
        {
            totalBillAmount = totalBillAmount + i.value.totalBill
        }
        return totalBillAmount
      }
    

    func display()
    {
        print("Customer Id          : \(self.customerId)")
        print("Customer Name            : \(firstName)\(lastName)")
        // full name will be automatic displayed we don't need to initialize it
        print("E-Mail Id            :\(self.email)")
        print("            Bills to be Paid            ")
        print("---------------------------------------------")
        for i in self.bills
        {
            i.value.display()
            print("********************************************")
        }
        if bills.count == 0
        {
            print("---No Bill Found For The Given Customer---")
        }
        else
        {
    
            print("---------------------------------------------")
            print("Total bill to pay    : \(totalBillAmount)")
            print("---------------------------------------------")
        }
        print("")
    }
 
 }
