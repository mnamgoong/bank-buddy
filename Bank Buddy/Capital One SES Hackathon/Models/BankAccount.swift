//
//  BankAccount.swift
//  Capital One SES Hackathon
//
//  Created by Minh Nguyen on 8/4/22.
//

import Foundation

struct BankAccount: Identifiable{
    var id: String
    var balance: Double
    var routing: String
    var transactions: [String]
    
    init(id: String, balance: Double, routing: String, transactions: [String]){
        self.id = id
        self.balance = balance
        self.routing = routing
        self.transactions = transactions
    }
    
}

extension BankAccount {
    static let sampleData: [BankAccount] =
    [
        BankAccount(id: "1020", balance: 10000.00, routing: "056073612", transactions: [
            "Food Mart: -10.00",
            "Costco: -25.00"
        ]),
        BankAccount(id: "613", balance: 5000.00, routing: "901205319", transactions: [
            "Food Mart: -1.00",
            "Costco: -250"
        ]),
        BankAccount(id: "3", balance: 10000.00, routing: "346573", transactions: [
            "Food Mart: -100",
            "Costco: -5.00"
        ]),
    
    ]
}
