//
//  Internet.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Internet : Bill, CalculateTotalBill
{
    
    var internetProvider : String
    var internetGBUsed : Int
    var internetRate :Double
    
    init(billId:String, billDate: String, billType: BillType,internetProvider : String ,internetGBUsed : Int, internetRate : Double )
    {
        self.internetProvider = internetProvider
        self.internetGBUsed = internetGBUsed
        self.internetRate = internetRate
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
    override func display()
    {
        super.display()
        print("Internet Provider    : \(internetProvider)")
        print("Internet Rate        : \(internetRate)")
        print("Internet Used(GB)    : \(internetGBUsed)")
        print("Bill to be Paid      : \(calculateTotalBill())")
    }
   
    func calculateTotalBill() -> Double {
        totalBill = Double((self.internetGBUsed)) * self.internetRate
        return totalBill
    }
    
}
