//
//  Transaction.swift
//  xe_wallet
//
//  Created by Paul Davis on 11/10/2021.
//

import Foundation

enum TransactionType: String {
    
    case send = "Sent"
    case receive = "Received"
    case exchange = "Exchanged"
}

enum TransactionStatus: String {
    
    case pending = "Pending"
    case confirmed = "Confirmed"
}

struct TransactionRecordDataModel {

    var type: TransactionType
    var status: TransactionStatus
    var date: String
    var amount: String
}
