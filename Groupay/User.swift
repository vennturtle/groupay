//
//  User.swift
//  Groupay
//
//  Created by Brandon Cecilio on 10/4/17.
//  Copyright © 2017 pen15club. All rights reserved.
//

import Foundation
import PassKit

class User {
    private var email: String
    private var name: (first: String, last: String?)
    private var hashedPassword: String
    private var phoneNumbers: [(type: String, number: String)] = []
    private var onlineAccounts: [(type: String, name: String, url: String?)] = []
    private var paymentMethod: PKPaymentPass?
    
    init(email: String, first: String, last: String?, pwhash: String){
        self.email = email
        name = (first, last)
        hashedPassword = pwhash
    }
    convenience init(first: String, email: String, pwhash: String){
        self.init(email: email, first: first, last: nil, pwhash: pwhash)
    }
    
    // only user can use this
    public func addNumber(type: String, number: String){
        phoneNumbers.append((type, number))
    }
    
    // only user can use this
    public func addAccount(type: String, name: String, url: String?){
        onlineAccounts.append((type, name, url))
    }
    
    public func getName() -> (first: String, last: String?) {
        return name
    }
    
    // only fellow group members can see this
    public var numbers: [(type: String, number: String)] {
        return phoneNumbers
    }
    
    // only fellow group members can see this
    public var accounts: [(type: String, name: String, url: String?)] {
        return onlineAccounts
    }
}
