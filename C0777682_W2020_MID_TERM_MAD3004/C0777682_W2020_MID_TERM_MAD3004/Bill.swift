//
//  Bill.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

enum BillType {
    case Mobile
    case Internet
    case Hydro
}

class Bill : IDisplay
{
    var billId :  String
    var billDate : String
    var billType : BillType
    var totalBill :  Double = 0.0
    
       
    init(billId : String,billDate : String,billType : BillType)//totalBill :  Double)
    {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        //self.totalBill = totalBill
      
    }
   
    func display()
    {
        print("BIll Id              : \(billId)")
        print("Bill Due Date        : \(dateFormat(string: billDate))")
        print("Bill Type            : \(billType)")
       // print("Total Bill to pay    : \(totalBill)")
    }
    func dateFormat(string : String)-> String   // https://www.hackingwithswift.com/example-code/system/how-to-convert-dates-and-times-to-a-string-using-dateformatter
    {
        let billDateFormatter = DateFormatter()
        billDateFormatter.dateFormat = "HH:mm E, d MMM y"
        let date = DateFormatter.string(<#T##self: DateFormatter##DateFormatter#>)
        return date
       
          
        /* let billDateFormatter = DateFormatter()
        billDateFormatter.dateFormat = "EE?E ,MMM d,YYY"
        guard let date = billDateFormatter.date(from: billDate) else
        {
            print("Unknown Date")
            return
        }
         return date
        }*/
    }
}
