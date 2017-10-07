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
    init(acct: PKPaymentPass){
        self.acct = acct
    }
    public func donate(){}
    public func requestPool(){}
}
