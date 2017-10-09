//
//  Group.swift
//  Groupay
//
//  Created by Brandon Cecilio on 10/4/17.
//  Copyright © 2017 pen15club. All rights reserved.
//

import Foundation
import PassKit

class Group {
    private var name: String
    private var desc: String?
    private var owner: User
    private var open = false
    private var treasurer: User
    private var members: [User]
    private var fund: Fund
    
    init(name: String, owner: User, treasurer: User, fundAccount: PKPaymentPass){
        self.name = name
        self.owner = owner
        self.treasurer = treasurer
        members = []
        members.append(owner)
        members.append(treasurer)
        fund = Fund(fundAccount)
    }
    
    convenience init(name: String, owner: User, fundAccount: PKPaymentPass){
        self.init(name: name, owner: owner, treasurer: owner, fundAccount: fundAccound)
    }
    
    public func join(member: User){
        if !open {
            // send request to owner
            members.append(member)
        }
        else {
            members.append(member)
        }
    }
    
    public func invite(member: User){
        // notify user
    }
    
    // only owner can use this
    public func setOpen(_ isOpen: Bool){ open = isOpen }

}
