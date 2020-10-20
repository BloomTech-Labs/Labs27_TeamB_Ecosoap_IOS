//
//  NewOrderViewController.swift
//  labs-ios-starter
//
//  Created by Joseph Veverka on 10/19/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class NewOrderViewController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: -IBOutlet
    
    @IBOutlet var orgNameTF: UITextField!
    @IBOutlet var barCountTF: UITextField!
    @IBOutlet var orderRevenueTF: UITextField!
    @IBOutlet var beneficiariesCountTF: UITextField!
    @IBOutlet var orderNotesTF: UITextField!
    @IBOutlet var buyerPhoneTF: UITextField!
    @IBOutlet var buyerNameTF: UITextField!
    @IBOutlet var buyerTypeTF: UITextField!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Helpers
    
    //Setup UI
    func configureUI() {
        
    }
    
    //MARK: - IBActions
    
    @IBAction func submitOrderButton(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
