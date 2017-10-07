//
//  Event.swift
//  Groupay
//
//  Created by Brandon Cecilio on 10/4/17.
//  Copyright © 2017 pen15club. All rights reserved.
//

import Foundation

enum PaymentType {
    case publicFund
    case participantFund
    case adHoc
}

class Event {
    var mode: PaymentType
    
    func join(){}
    func invite(){}
    func requestInfo(){}
    func settleFinances(){}
    
    init(){
        mode = .adHoc
    }
}
