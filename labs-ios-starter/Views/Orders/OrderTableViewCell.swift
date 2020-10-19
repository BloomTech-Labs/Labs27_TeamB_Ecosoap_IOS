//
//  OrderTableViewCell.swift
//  labs-ios-starter
//
//  Created by Joseph Veverka on 10/19/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class OrderTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    static let reuseIdentifier: String = "OrderCell"
    
    //MARK: - IBOutlets
    
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var barCount: UILabel!
    @IBOutlet var organizationName: UILabel!
    //MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
