//
//  NewReportViewController.swift
//  labs-ios-starter
//
//  Created by Joseph Veverka on 10/6/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class NewReportViewController: UIViewController {
    
    //MARK: - IBOutlet
  
    @IBOutlet var hoursWorkedTextField: UITextField!
    @IBOutlet var soapMakersTextField: UITextField!
    @IBOutlet var barsProducedTextField: UITextField!
    @IBOutlet var addAPhotoLabel: UILabel!
    @IBOutlet var addPhotoButtonOulet: UIButton!
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    //MARK: - IBAction
    @IBAction func addPhotoButton(_ sender: UIButton) {
    }
    
    @IBAction func submitReportButton(_ sender: UIButton) {
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
}
