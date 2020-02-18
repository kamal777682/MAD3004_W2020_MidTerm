//
//  Extension.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-18.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

extension String
{
       
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
}

extension Int{
    func dataUsed () -> String{
        let data = String.init(format : "%i GB",self)
        return data
    }
     
    func timeInMinutes() -> String
    {
        let time = String.init(format: "%i min",self)
        return time
    }
}
