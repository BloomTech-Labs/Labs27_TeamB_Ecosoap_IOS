//
//  HubCoordinator.swift
//  labs-ios-starter
//
//  Created by Chris Gonzales on 10/6/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import Foundation
import UIKit

class HubCoordinator {
    
    // MARK: - Properties
    var user: User
    var userId: String
    var firstName: String
    var middleName: String
    var lastName: String
    var userEmail: String
    var userSkypeId: String
    var userPhone: String
    var reportDate: Date
    var barsProduced: Int
    var soapMakersWorked: Int
    var hoursSoapMakersWorked: Int
    let backEndController = BackendController.shared
    
//    var soapPhotos: UIImage // need to convert String to UIImage
    
    // MARK: - Init
    init() {
        userId = "UserID Test"
        firstName = "Johnny"
        middleName = "Q"
        lastName = "Appleseed"
        userEmail = "johnnyQAppleseed@email.com"
        userSkypeId = "@johnnyqappleseed"
        userPhone = "123-234-4567"
        
        reportDate = Date()
        barsProduced = 1
        soapMakersWorked = 1
        hoursSoapMakersWorked = 1
        user = backEndController.loggedInUser
    }
    
    // MARK: - Functions
    private func fetchImpactReport() {
        
    }
    
}
