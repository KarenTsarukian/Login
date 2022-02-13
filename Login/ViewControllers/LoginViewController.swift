//
//  ViewController.swift
//  Login
//
//  Created by Karen Tsarukian on 05.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUserInfo()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user.person.fullName
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutMeVC = navigationVC.topViewController as! AboutMeViewController
                aboutMeVC.name = user.person.name
                aboutMeVC.surname = user.person.surname
                aboutMeVC.age = user.person.age
                aboutMeVC.hobby = user.person.hobby
            }
        }
    }
    
    @IBAction func logInPressed() {
        if userNameTF.text != user.login || passwordTF.text != user.password {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login or password"
            )
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUNButtonAction() {
        showAlert(with: "Oops!", and: "Your name is \(user.login)😉")
    }
    
    @IBAction func forgotPasswordButtonAction() {
        showAlert(with: "Oops", and: "Your password is \(user.password)😉")
    }
}

extension LoginViewController {
        
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default) { _ in
                self.passwordTF.text = ""
            }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}



