//
//  ExistingReportViewController.swift
//  labs-ios-starter
//
//  Created by Joseph Veverka on 10/7/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class ExistingReportViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var reportDateLabel: UILabel!
    @IBOutlet var hoursWorkedLabel: UILabel!
    @IBOutlet var soapmakersWorkedLabel: UILabel!
    @IBOutlet var barsProducedLabel: UILabel!
    @IBOutlet var addAPhotoLabel: UILabel!
    @IBOutlet var reportImages: UIImageView!
    @IBOutlet var deleteButtonOutlet: UIButton!
    @IBOutlet var editButtonOutlet: UIButton!
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addAPhotoLabel.isHidden = true // Don't need this for existing reports
    }
    
    //MARK: - IBAction
    @IBAction func editButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func deleteButtonTapped(_ sender: UIButton) {
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}
