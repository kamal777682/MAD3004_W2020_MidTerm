//
//  main.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation


func isValidEmail() -> Bool
{
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: "Email is not correct")
}

func isValidPhone() -> Bool
{
      let regularExpressionForPhone = "^\\d{3}-\\d{3}-\\d{4}$"
      let testPhone = NSPredicate(format:"SELF MATCHES %@", regularExpressionForPhone)
      return testPhone.evaluate(with: "Number is invalid")
}

var b1 = Bill(billId: "I001", billDate: "20022020", billType: BillType.Internet  )

var i1 = Internet(billId: "I001", billDate: "20022020", billType: BillType.Internet, totalBill: 45.0, internetProvider: "Rogers", internetGBUsed: "5GB", internetRate: "1Gb/$15")


