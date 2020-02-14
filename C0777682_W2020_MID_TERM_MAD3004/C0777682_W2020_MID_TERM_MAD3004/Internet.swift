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
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
    override func display()
    {
        print("BIll Id              : \(billId)")
        print("Bill Due Date        : \(billDate)")
        print("Bill Type            : \(billType)")
        print("Internet Provider    : \(internetProvider)")
        print("Internet Rate        : \(internetRate)")
        print("Internet Used(GB)    : \(internetGBUsed)")
    }
    
}
