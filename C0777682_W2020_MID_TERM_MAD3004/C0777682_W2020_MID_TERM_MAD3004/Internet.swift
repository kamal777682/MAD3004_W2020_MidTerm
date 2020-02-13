//
//  Internet.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Internet : Bill
{
    
    var internetProvider : String
    var internetGBUsed : String
    var internetRate : String
    
    init(billId: Int, billDate: Date, billType: BillType, totalBill: Double,internetProvider : String ,internetGBUsed : String, internetRate : String )
    {
        self.internetProvider = internetProvider
        self.internetGBUsed = internetGBUsed
        self.internetRate = internetRate
        super.init(billId: billId, billDate: billDate, billType: billType, totalBill: totalBill)
    }
    
    override func display()
    {
        print("Internet Provider : \(internetProvider)")
        print("Internet Rate : \(internetRate)")
        print("Internet Used(GB) : \(internetGBUsed)")
    }
    
}
