//
//  User.swift
//  Groupay
//
//  Created by Brandon Cecilio on 10/4/17.
//  Copyright © 2017 pen15club. All rights reserved.
//

import Foundation

class User {
    private var username: String
    private var email: String
    private var name: (forename: String, surname: String)?
    private var hashedPassword: String
    
    init(username: String, email: String, pwhash: String){
        self.username = username
        self.email = email
        hashedPassword = pwhash
    }
    init(username: String, rname: (forename: String, surname: String), pwhash: String){
        self.username = username
        name = rname
        hashedPassword = pwhash
    }
    public func login(uname: String, pwhash: String) -> LoginToken {
        return LoginToken()
    }
}
