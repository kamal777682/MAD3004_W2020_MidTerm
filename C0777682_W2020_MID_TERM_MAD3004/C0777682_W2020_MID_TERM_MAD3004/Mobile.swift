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
    var manufacturerName : String
    var mobileNumber : String
    var mobilePlan :Int
    var internetGBUsed : Int
    var minuteUsed : Int
    var billAmount : Double
    {
        return self.calculateBill()
    }
    init(billId :String, billDate : String ,billType : BillType,  manufacturerName : String, mobileNumber : String, mobilePlan : Int , internetGBUsed : Int, minuteUsed: Int)
    {
        self.manufacturerName   = manufacturerName
        self.mobileNumber = mobileNumber
        self.mobilePlan = mobilePlan
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        super.init(billId: billId, billDate : billDate, billType: billType)
    }
    override func display()
    {
        print("Name of The Manufacturer     : \(manufacturerName)")
        print("Mobile NUmber                : \(mobileNumber)")
        print("Mobile Plan                  : \(mobilePlan)")
        print("Internet Used (GB)           : \(internetGBUsed)")
        print("Talk Minutes                 : \(minuteUsed)")
        print("MObile Bill                  :\(billAmount)")
        super.display()
    }
    
    func calculateBill()->Double
    {
        var bill = 0.0
        bill = ((self.internetGBUsed * self.minuteUsed)/self.mobilePlan)*100
        return bill
    }
    
    
    
 
    
}
