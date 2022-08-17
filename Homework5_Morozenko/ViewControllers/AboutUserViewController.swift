//
//  AboutUserViewController.swift
//  Homework5_Morozenko
//
//  Created by Danil Morozenko on 17.08.2022.
//

import UIKit

class AboutUserViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var armenianName: UILabel!
  
    
    @IBOutlet var moreInfoButton: UIButton!
    
    var userName: String!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
        armenianName.text = user.armenianName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        moreInfoVC.user = user
    }
    
    @IBAction func moreInfoButtonAction() {
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
    }
}
