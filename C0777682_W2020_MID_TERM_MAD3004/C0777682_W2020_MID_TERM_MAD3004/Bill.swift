//
//  Bill.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

enum BillType {
    case Mobile,InTernet,Hydro
}

class Bill : IDisplay
{
    var billId : Int
    var billDate : String
    var billType : BillType
    var totalBill :  Double
    
    init(billId : Int,billDate : String)
    {
        self.billId = billId
        self.billDate = billDate
    }
    
    init(billId : Int,billDate : String,billType : BillType )
    {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    }
    
    func display()
    {
        print("BIll Id              : \(billId)")
        print("Bill Due Date        : \(billDate)")
        print("Bill Type            : \(billType)")
        print("Total Bill to pay    : \(totalBill)")
    }
    func dateFormat()-> Date
    {
        let billDate = "20:32 Wed, 30 Oct 2019"
        let billDateFormatter = DateFormatter()
        billDateFormatter.dateFormat = "EEE ,MMM d,YYY"
        guard let date = billDateFormatter.date(from: billDate) else
        {
            print("Unknown Date")
        }
        return date
        
        /* let billDate : String
        let billDateFormatter = DateFormatter()
        billDateFormatter.dateFormat = "EEE ,MMM d,YYY"

        print(bill)(billDateFormatter.date(from: billDate) */

    }}

