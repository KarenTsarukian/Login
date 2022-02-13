//
//  WelcomeViewController.swift
//  Login
//
//  Created by Karen Tsarukian on 05.02.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeTF: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTF.text = "Welcome \(user)!"
        
    }
}
