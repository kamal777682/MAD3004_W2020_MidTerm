//
//  Mobile.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Mobile : IDisplay
{
    var mobileModelName : String
    var mobileNumber : String
    var mobilePlan : String
    var internetGBUsed : String
    var minutetalk : String
    
    init(mobileModelName : String, mobileNumber : String, mobilePlan : String, internetGBUsed : String, minutetalk : String)
    {
        self.mobileModelName = mobileModelName
        self.mobileNumber = mobileNumber
        self.mobilePlan = mobilePlan
        self.internetGBUsed = internetGBUsed
        self.minutetalk = minutetalk
    }
    func display() {
        <#code#>
    }
}
