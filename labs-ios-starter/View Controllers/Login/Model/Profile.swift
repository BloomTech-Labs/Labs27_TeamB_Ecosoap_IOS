//
//  Profile.swift
//  LabsScaffolding
//
//  Created by Spencer Curtis on 7/23/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

// Think I may not need this file based of the Coordinator files created by Chris & Enrique

struct Profile: Codable {
    
 
    let userId: String
    let firstName: String
    let middleName: String
    let lastName: String
    let userEmail: String
    let userSkypeId: String
    let userPhone: String
//    let avatarURL: URL?

    /// Storing the `avatarImage` on the model object itself is fine up to a point due to potentially using too much memory. If you know you will be storing a large amount of images, using a cache and clearing it out after you hit a certain amount of information in it would be better.
//    var avatarImage: UIImage? = nil
    
 
    
    enum CodingKeys: String, CodingKey {
        case userId
        case firstName
        case middleName
        case lastName
        case userEmail
        case userSkypeId
        case userPhone
////        case avatarURL = "avatarUrl"
    }
}

struct ProfileWithMessage: Codable {
    let profile: Profile
    let message: String?
}
