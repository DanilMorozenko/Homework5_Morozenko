//
//  ViewController.swift
//  Homework5_Morozenko
//
//  Created by Danil Morozenko on 14.08.2022.
//

import UIKit

final class LoginViewController: UIViewController {
   
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var ForgotLoginButton: UIButton!
    @IBOutlet var ForgotPasswordButton: UIButton!
    
    private var userName = "Danil"
    private var password = "321"

    private let user = User.getUser()

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func userNameAction() {
    }
    
    @IBAction func passwordAction() {
    }
    
    @IBAction func logInAction() {
    if userNameTextField.text != userName || passwordTextField.text != password {
        showAlert(with: "Oops, seems your User Name or Password is uncorrect", and: "Try again or push 'Forgot Log In' or 'Forgot Password'")
        passwordTextField.text = ""
        }
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func ForgotLoginAction() {
        showAlert(with: "Wow, really?", and: "Try Danil")
    }
    
    @IBAction func ForgotPasswordAction() {
        showAlert(with: "Nooooo, again?", and: "Try 321")
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        guard let tabBar = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBar.viewControllers else { return }
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.welcomeText = userNameTextField.text
            } else if let aboutUserVC = viewController as? AboutUserViewController {
                aboutUserVC.userName = userNameTextField.text
                aboutUserVC.user = user
            }
        }
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}
