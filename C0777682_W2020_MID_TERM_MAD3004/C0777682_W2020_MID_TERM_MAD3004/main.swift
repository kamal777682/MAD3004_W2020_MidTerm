//
//  main.swift
//  C0777682_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

var customers = [String : Customer]()

var i1 = Internet(billId: "I001", billDate: "20/02/2019", billType: .Internet, internetProvider: "Rogers", internetGBUsed: 10, internetRate: 4.5)
var i2 = Internet(billId: "I002", billDate: "14/03/2019", billType: .Internet, internetProvider: "Freedom", internetGBUsed: 5, internetRate: 3.0)
var i3 = Internet(billId: "I003", billDate: "23/08/2019", billType: .Internet, internetProvider: "Freedom", internetGBUsed: 6, internetRate: 3.5)
var h1 = Hydro(billId: "H001", billDate: "26/04/2018", billType: .Hydro,agencyName: "Planet Energy", unitConsumed: 200, rate: 0.90)
var h2 = Hydro(billId: "H002", billDate: "03/09/2019", billType: .Hydro, agencyName: "OntarioHydro", unitConsumed: 700, rate: 0.75)
var m1 = Mobile(billId: "M001", billDate: "07/09/2019", billType: .Mobile, manufacturerName: "Apple Inc.", mobileNumber: "4563045045", mobilePlan:"4.5GB + 1000 Min", internetGBUsed: 4, minuteUsed: 100, planRate: 0.95, internetRate: 5)
var m2 = Mobile(billId: "M002", billDate: "08/09/2019", billType: .Mobile, manufacturerName: "Apple Inc.", mobileNumber: "45637800", mobilePlan:"4.5GB + 1000 Min", internetGBUsed: 2, minuteUsed: 200, planRate: 0.95, internetRate: 5)

var c1 = Customer(customerId: "C001", firstName: "Kamalpreet", lastName: "Kaur", email: "kamal456@gmail.com")
var c2 = Customer(customerId: "C002", firstName: "Nikita", lastName: "Sandhu", email: "niksandhu23@gmail.com")
var c3 = Customer(customerId: "C003", firstName: "Jyoti", lastName: "Thomas", email: "jyotiT@outlook.com")
var c4 = Customer(customerId: "C004", firstName: "Geet", lastName: "Gupta", email: "geetgupta@yahoo")
//var c5 = Customer(customerId: "C005", firstName: "Prianka", lastName: "Sharma", email: "priyanka456@yahoo.com")

c1.addBill(bill: i1, billID: i1.billId)
c1.addBill(bill: h1, billID: h1.billId)
c1.addBill(bill: m1, billID: m1.billId)
c2.addBill(bill: i2, billID: i2.billId)
c3.addBill(bill: h2, billID: h2.billId)
c3.addBill(bill: i3, billID: i3.billId)
if c4.email.isValidEmail() 
{
    c4.addBill(bill: i3, billID: i3.billId)
}
//c5.addBill(bill: m2, billID: m2.billId)

func addCustomer(customer : Customer , customerId : String)
{
    customers.updateValue(customer, forKey: customerId)
}

addCustomer(customer: c1, customerId: c1.customerId)
addCustomer(customer: c2, customerId: c2.customerId)
addCustomer(customer: c3, customerId: c3.customerId)
addCustomer(customer: c4, customerId: c4.customerId)

func getCustomerById(Id: String)
{
    if(customers.index(forKey: Id) != nil)
    {
        customers[Id]?.display()
    }
    else
    {
            print("Customer doesn't exist\n")
    }
}
if m1.mobileNumber.isValidPhone()
{
    getCustomerById(Id: "C001")
}
else
{
    print("Customer doesn't exist\n")
}
//c1.removeBill(bill: i1, billID: "I001")
//getCustomerById(Id: "C001")
getCustomerById(Id: "C002")
getCustomerById(Id: "C003")
getCustomerById(Id: "C004")
getCustomerById(Id: "C005")


