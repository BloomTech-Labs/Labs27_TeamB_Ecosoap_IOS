//
//  AddProfileViewController.swift
//  LabsScaffolding
//
//  Created by Spencer Curtis on 7/27/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

protocol AddProfileDelegate: class {
    func profileWasAdded()
}

class AddProfileViewController: UIViewController {

    // MARK: - Properties and Outlets

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // MARK: - Properties and Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var lastLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var skypeLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var middleTextField: UITextField!
    @IBOutlet weak var lastTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var skypeTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!

    
    weak var delegate: AddProfileDelegate?
    
    var profileController: ProfileController = ProfileController.shared
    var keyboardDismissalTapRecognizer: UITapGestureRecognizer!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        setUpKeyboardDismissalRecognizer()
//
//        firstTextField.delegate = self
//        middleTextField.delegate = self
//        lastTextField.delegate = self
//        emailTextField.delegate = self
//        skypeTextField.delegate = self
//        phoneTextField.delegate = self

    }
    
    // MARK: - Actions
    
    @IBAction func deleteProfile(_ sender: Any?) {
    }
    
    @IBAction func editProfile(_ sender: Any) {
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
//    @IBAction func addProfile(_ sender: Any) {
//
//        guard let firstName = firstTextField.text,
//              let middleName = middleTextField.text,
//              let lastName = lastTextField.text,
//              let userEmail = emailTextField.text,
//              let userSkypeId = skypeTextField.text,
//              let userPhone = phoneTextField.text,
//
//            let profile = profileController.createProfile(with: firstName, middleName: middleName, lastName: lastName, userEmail: userEmail, userSkypeId: userSkypeId, userPhone: userPhone) else {
//                NSLog("Fields missing information. Present alert to notify user to enter all information.")
//                return
//        }
//
//        activityIndicator.startAnimating()
//
//        profileController.addProfile(profile) { [weak self] in
//
//            guard let self = self else { return }
//
//            self.activityIndicator.stopAnimating()
//            self.dismiss(animated: true, completion: {
//                self.delegate?.profileWasAdded()
//            })
//        }
//    }
    
    // MARK: - Private Methods
    
    private func setUpKeyboardDismissalRecognizer() {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(recognizer)
        keyboardDismissalTapRecognizer = recognizer
    }
    
    @objc override func dismissKeyboard() {
        view.endEditing(true)
    }
}

// MARK: - UITextFieldDelegate

//extension AddProfileViewController: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        switch textField {
//        
//        case firstTextField:
//            middleTextField.becomeFirstResponder()
//        case middleTextField:
//            lastTextField.becomeFirstResponder()
//        case lastTextField:
//            emailTextField.becomeFirstResponder()
//        case emailTextField:
//            skypeTextField.becomeFirstResponder()
//
//        default:
//            break
//        }
//        return true
//    }
//}
