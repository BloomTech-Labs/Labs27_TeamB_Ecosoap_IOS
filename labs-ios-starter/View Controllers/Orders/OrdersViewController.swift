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
    
    //MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
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
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: OrderTableViewCell.reuseIdentifier, for: <#T##IndexPath#>)
    }
    
    
}
