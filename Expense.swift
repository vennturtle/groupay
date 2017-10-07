//
//  Expense.swift
//  Groupay
//
//  Created by Brandon Cecilio on 10/4/17.
//  Copyright © 2017 pen15club. All rights reserved.
//

import Foundation
import PassKit
import UIKit

struct Expense {
    var cost: Double
    var reason: String
    var accountOwed: PKPaymentPass
    var pics: [UIImage]?
    var responsible: User
}
