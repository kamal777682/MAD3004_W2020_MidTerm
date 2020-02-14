//
//  Mobile.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Mobile : Bill
{
    var mobileModelName : String
    var mobileNumber : String
    var mobilePlan : String
    var internetGBUsed : String
    var minuteUsed : String
    
    init(billId : Int,billDate : Date,billType : BillType , totalBill : Double,  mobileModelName : String, mobileNumber : String, mobilePlan : String, internetGBUsed : String, minuteUsed: String)
    {
        self.mobileModelName = mobileModelName
        self.mobileNumber = mobileNumber
        self.mobilePlan = mobilePlan
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        super.init(billId: billId, billDate: billDate, billType: billType, totalBill: totalBill)
    }
    override func display()
    {
        print("Name of The Mobile Model     : \(mobileModelName)")
        print("Mobile NUmber                : \(mobileNumber)")
        print("Mobile Plan                  : \(mobilePlan)")
        print("Internet Used (GB)           : \(internetGBUsed)")
        print("Talk Minutes                 : \(minuteUsed)")
    }
    
    /* var isValidPhone: Bool {
         let regularExpressionForPhone = "^\\d{3}-\\d{3}-\\d{4}$"
         let testPhone = NSPredicate(format:"SELF MATCHES %@", regularExpressionForPhone)
         return testPhone.evaluate(with: self)*/
    
}
