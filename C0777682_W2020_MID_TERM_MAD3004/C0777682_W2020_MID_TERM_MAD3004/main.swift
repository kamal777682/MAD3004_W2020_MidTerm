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

var c1 = Customer(customerId: 1, firstName: "kamal", lastName: "kaur" , bills: 3, email: "kamalpreetkaurgmail.com", totalBillAmount: 45.0)
c1.display()

