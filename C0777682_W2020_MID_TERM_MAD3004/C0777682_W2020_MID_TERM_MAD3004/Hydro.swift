//
//  Hydro.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Hydro : Bill
{
    var agencyName : String
    var unitConsumed : String
    
    init(billId: Int, billDate: Date, billType: BillType, totalBill: Double,agencyName : String,unitConsumed : String)
    {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
    override func display()
    {
        print("BIll Id              : \(billId)")
        print("Bill Due Date        : \(billDate)")
        print("Bill Type            : \(billType)")
        print("Agency Name          : \(agencyName)")
        print("Unit Consumed        : \(unitConsumed)")
    }
}
