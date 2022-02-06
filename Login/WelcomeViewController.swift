//
//  WelcomeViewController.swift
//  Login
//
//  Created by Karen Tsarukian on 05.02.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeTF: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    var user: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTF.text = "Welcome \(user ?? "")!"
        
    }
}
