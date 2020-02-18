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
        print("BIll Id              : \(self.billId)")
        print("Bill Date            : \(self.dateFormat(string: billDate))")
        print("Bill Type            : \(self.billType)")
      
    }
    
    func dateFormat(string : String)-> String
        
    {
        let getdate = DateFormatter()
        getdate.dateFormat = "dd/MM/yyyy"
        
        let setdate = DateFormatter()
        setdate.dateFormat = "EEEE,mmmm d, YYYY"
        let date : Date? =  getdate.date(from: billDate)
        return setdate.string(from: date!)     
          
    }
}
//https://www.hackingwithswift.com/example-code/system/how-to-convert-dates-and-times-to-a-string-using-dateformatter
