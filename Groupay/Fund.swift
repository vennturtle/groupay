//
//  Fund.swift
//  Groupay
//
//  Created by Brandon Cecilio on 10/4/17.
//  Copyright © 2017 pen15club. All rights reserved.
//

import Foundation
import PassKit

class Fund {
    private var acct: PKPaymentPass
    private var amount = 0.0
    private var donors: [(donor: User, amount: Double)] = []
    private var fundingGoal: (goal: Double, current: Double, reason: String)?
    
    init(acct: PKPaymentPass){
        self.acct = acct
    }
    
    public func donate(from: User, amount: Double){
        self.amount += amount
        if fundingGoal != nil {
            fundingGoal!.current += amount
        }
        donors.append((from, amount))
    }
    
    // only treasurer can use this
    public func setGoal(amount: Double, reason: String){
        fundingGoal = (goal: amount, current: 0.0, reason: reason)
    }
    
    // only treasurer can use this
    public func expend(exp: Expense){
        amount -= exp.cost
        // pay exp.cost from self.acct to exp.accountOwed
    }
}
