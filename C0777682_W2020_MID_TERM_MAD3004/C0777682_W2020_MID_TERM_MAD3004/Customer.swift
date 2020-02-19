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
   
    var customerId : String
    var firstName : String
    var lastName : String
    lazy var bills = [String : Bill]()   //dictionary creation
    lazy var totalBillAmount : Double = 0.0
    var email : String
    init(customerId : String,firstName : String, lastName : String,email : String)
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
    
    func removeBill(bill :Bill,billID : String)
    {
        bills.removeValue(forKey: billID)
    }
      
    func calculateTotalBill()-> Double
      {
        for i in bills
        {
            totalBillAmount = totalBillAmount + i.value.totalBill
        }
        return totalBillAmount
      }
    

    func display()
    {
        print("*************************************************")
        print("Customer Id          : \(self.customerId)")
        print("Customer Name        : \(firstName)\(lastName)")
        // full name will be automatic displayed we don't need to initialize it
        print("E-Mail Id            : \(self.email)")
        print("-------------------------------------------------")
        print("              Bills Information           ")
        print("*************************************************")
            for i in self.bills
            {
                print("-------------------------------------------------")
                i.value.display()
            }
            if bills.count == 0
            {
                print("  ---No Bill Found For The Given Customer----")
                 print("*************************************************")
            }
            else
            {
            
                print("=================================================")
                print("Total bill to pay    : \(calculateTotalBill().cur())")
                print("=================================================")
            }
                print("")
    }
 
 }
