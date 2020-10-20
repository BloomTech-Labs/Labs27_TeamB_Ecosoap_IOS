//
//  OrdersViewController.swift
//  labs-ios-starter
//
//  Created by Joseph Veverka on 10/19/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class OrdersViewController: UIViewController {
    
    //MARK: - Properties
    // Dummy Data to populate Table View
    var orgName = "Dummy Organization"
    var barCount = "32 bars"
    var date = "October 19, 2020"
    
    //MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Helpers
    
    //Set up UI
    func configureUI() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension OrdersViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: OrderTableViewCell.reuseIdentifier, for: indexPath) as! OrderTableViewCell
        cell.barCount.text = self.barCount
        cell.organizationName.text = self.orgName
        cell.dateLabel.text = self.date
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let sectionName: String
        switch section {
        case 0:
            sectionName = NSLocalizedString("Open", comment: "mySectionName")
        case 1:
            sectionName = NSLocalizedString("Closed", comment: "myOtherSectionName")
        // ...
        default:
            sectionName = ""
        }
        return sectionName
    }
}
