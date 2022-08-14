//
//  ViewController.swift
//  Homework5_Morozenko
//
//  Created by Danil Morozenko on 14.08.2022.
//

import UIKit

class LoginViewController: UIViewController {
   
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var ForgotLoginButton: UIButton!
    @IBOutlet var ForgotPasswordButton: UIButton!
    
    var userName = "123"
    var password = "321"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    self.view.endEditing(true)
    }
    
    @IBAction func userNameAction() {
       // if (userNameTextField.next != nil) {
         //   logInAction()
        //} // вот тут хотел попробовать привязать команду к кнопке "next" (она же не может без дела болтаться - но что-то у меня не вышло (а еще забыл, как закомментировать область, а не по-строчно)
    }
    
    @IBAction func passwordAction() {
    } // тут тоже хотелось кнопку "Go" завязать на действие
    
    @IBAction func logInAction() {
    if userNameTextField.text != userName {
        showAlert(with: "Oops, seems your User Name is uncorrect", and: "Try again or push 'Forgot Log In'")
    } else if passwordTextField.text != password {
        showAlert(with: "Oops, seems your Password is uncorrect", and: "Try again or push 'Forgot Password'")
    }
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func ForgotLoginAction() {
        showAlert(with: "Wow, really?", and: "Try 123")
    }
    
    @IBAction func ForgotPasswordAction() {
        showAlert(with: "Nooooo, again?", and: "Try 321")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeTextVC = segue.destination as? WelcomeViewController else { return }
        welcomeTextVC.welcomeText = userNameTextField.text
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
