//
//  AboutMeViewController.swift
//  Login
//
//  Created by Karen Tsarukian on 13.02.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    
    var name = ""
    var surname = ""
    var age = 0
    var hobby = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Имя: \(name)"
        surnameLabel.text = "Фамилия: \(surname)"
        ageLabel.text = String("Возраст: \(age)")
        hobbyLabel.text = "Увлечения: \(hobby)"
    }
}
