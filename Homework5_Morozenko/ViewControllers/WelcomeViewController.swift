//
//  WelcomeViewController.swift
//  Homework5_Morozenko
//
//  Created by Danil Morozenko on 14.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeTextLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTextLabel.text = "Welcome, \(welcomeText ?? "")"
    }
    
    @IBAction func logOutButtonAction() {
    }
    
    

}
