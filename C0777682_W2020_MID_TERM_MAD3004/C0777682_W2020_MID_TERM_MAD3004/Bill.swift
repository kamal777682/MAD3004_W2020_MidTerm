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
    var billDate : Date?
    var billType : BillType
    var totalBill :  Double
    
    init(billId : Int,billDate : Date,billType : BillType , totalBill : Double )
    {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBill = totalBill
    }
    
    func display() {
        <#code#>
    }
}
