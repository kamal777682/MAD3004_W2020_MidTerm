//
//  Hydro.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Hydro : Bill, CalculateTotalBill
{
    var agencyName : String
    var unitConsumed : Int
    var rate : Double
    
    init(billId: String, billDate: String, billType: BillType,agencyName : String,unitConsumed : Int,rate : Double)
    {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        self.rate = rate
        super.init(billId: billId, billDate : billDate, billType: billType)
    }
    
    override func display()
    {
        super.display()
        print("Agency Name          : \(self.agencyName)")
        print("Unit Consumed        : \(self.unitConsumed)")
        print("Hydro Rate Per Units : \(self.rate.currencyPerUnit())")
        print("Bill To BE Paid      : \(self.calculateTotalBill())")    }
    
    func calculateTotalBill() -> Double
    {
        totalBill = Double(self.unitConsumed) * self.rate
        return totalBill
    }
}
