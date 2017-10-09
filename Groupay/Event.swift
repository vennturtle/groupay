//
//  Event.swift
//  Groupay
//
//  Created by Brandon Cecilio on 10/4/17.
//  Copyright © 2017 pen15club. All rights reserved.
//

import Foundation
import PassKit

enum PaymentType {
    case publicFund
    case participantFund
    case adHoc
}

class Event {
    private var title: String
    private var description: String
    private var group: Group
    private var fund: Fund
    private var mode: PaymentType
    private var open = false
    private var participants: [User] = []
    private var expenses: [Expense] = []
    
    init(title: String, description: String, group: Group, fund: Fund){
        self.group = group
        self.fund = fund
        mode = .publicFund
    }
    
    init(title: String, description: String, group: Group, accountPayable: PKPaymentPass, isParticipantFund: Bool){
        self.group = group
        fund = Fund(accountPayable)
        mode = (isParticipantFund ? PaymentType.participantFund : PaymentType.adhoc)
    }
    
    // if event is not open, only group members can use this
    public func join(participant: User){
        participants.append(participant)
    }
    
    public func invite(participant: User, by: User){
        // notify participant
        // if event is not open, check if participant belongs in group
    }
    
    // only treasurer can use this
    public func requestInfo(on: Expense){
        // notify on.responsible
    }
    
    // only treasurer can use this
    public func settleFinances(){
        switch(mode){
        case .publicFund:
            fund.setGoal(amount: totalCost, reason: title)
        }
    }
    
    // only owner can use this
    public func setOpen(_ isOpen: Bool){ open = isOpen }
    
    private var totalCost: Double {
        var acc = 0.0
        for expense in expenses {
            acc += expense.cost
        }
        return acc
    }
}
