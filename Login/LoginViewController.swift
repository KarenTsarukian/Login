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
    
    private let user = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    @IBAction func logInPressed() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login or password"
            )
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUNButtonAction() {
       showAlert(with: "Oops!", and: "Your name is \(user)😉")
    }
    
    @IBAction func forgotPasswordButtonAction() {
        showAlert(with: "Oops", and: "Your password is \(password)😉")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let _ = touches.first {
            view.endEditing(true)
        }
        super .touchesBegan(touches, with: event)
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


