//
//  ProfileDetailViewController.swift
//  LabsScaffolding
//
//  Created by Spencer Curtis on 7/27/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class ProfileDetailViewController: UIViewController {
    
    // MARK: - Properties and Outlets
    
//    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var lastLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var skypeLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var editStackView: UIStackView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var middleTextField: UITextField!
    @IBOutlet weak var lastTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var skypeTextField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
   
//    @IBOutlet weak var avatarURLTextField: UITextField!
    
    var profileController: ProfileController = ProfileController.shared
    var profile: Profile?
    var isUsersProfile = true
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    @IBAction func cancelProfileUpdate(_ sender: Any) {
        setEditing(false, animated: true)
    }
    
    @IBAction func saveProfileChanges(_ sender: Any) {
        // ToDo - send user back to
    }
    
    // Change to edit profile, figure out how to change button from edit to cancel
    @IBAction func updateProfile(_ sender: Any) {
        
        guard let profile = profileController.authenticatedUserProfile,
            let name = nameTextField.text,
            let middle = middleTextField.text,
            let last = lastTextField.text,
            let email = emailTextField.text,
            let skype = skypeTextField.text,
            let number = phoneNumberField.text
//            let avatarURLString = avatarURLTextField.text,
//            let avatarURL = URL(string: avatarURLString)
        else {
                presentSimpleAlert(with: "Some information was missing",
                                   message: "Please enter all information in, and ensure the avatar URL is in the correct format.",
                                   preferredStyle: .alert,
                                   dismissText: "Dismiss")
                
                return
        }
        
        profileController.updateAuthenticatedUserProfile(profile, with: name, middleName: middle, lastName: last, userEmail: email, userSkypeId: skype, userPhone: number) { [weak self] (updatedProfile) in
            
            guard let self = self else { return }
            self.updateViews(with: updatedProfile)
        }
      
    }
    
    
        
//        profileController.updateAuthenticatedUserProfile(profile, with: name, email: email, avatarURL: avatarURL) { [weak self] (updatedProfile) in
//
//            guard let self = self else { return }
//            self.updateViews(with: updatedProfile)
//        }
//    }
    
    // MARK: - Private Methods
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        editStackView.isHidden = !editing
        
        if editing {
            navigationItem.rightBarButtonItem = nil
        } else {
            navigationItem.rightBarButtonItem = editButtonItem
        }
    }
    
    
    // MARK: View Setup
    
    private func updateViews() {
        
        if let profile = profile {
            title = "Details"
            updateViews(with: profile)
        } else if isUsersProfile,
            let profile = profileController.authenticatedUserProfile {
            title = "Me"
            updateViews(with: profile)
        }
    }
    
    private func updateViews(with profile: Profile) {
        guard isViewLoaded else { return }
        
        nameLabel.text = profile.firstName
        middleLabel.text = profile.middleName
        lastLabel.text = profile.lastName
        emailLabel.text = profile.userEmail
        skypeLabel.text = profile.userSkypeId
        numberLabel.text = profile.userPhone
        
//        if let avatarImage = profile.avatarImage {
//            avatarImageView.image = avatarImage
//        } else if let avatarURL = profile.avatarURL {
//            profileController.image(for: avatarURL, completion: { [weak self] (avatarImage) in
//                guard let self = self else { return }
//
//                self.profile?.avatarImage = avatarImage
//                self.avatarImageView.image = avatarImage
//            })
//        }
        
        guard isUsersProfile else { return }
        
        navigationItem.rightBarButtonItem = editButtonItem
        
        nameTextField.text = profile.firstName
        middleTextField.text = profile.middleName
        lastTextField.text = profile.lastName
        emailTextField.text = profile.userPhone
        skypeTextField.text = profile.userSkypeId
        phoneNumberField.text = profile.userPhone
        
//        avatarURLTextField.text = profile.avatarURL?.absoluteString
    }
}
