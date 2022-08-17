//
//  MoreInfoViewController.swift
//  Homework5_Morozenko
//
//  Created by Danil Morozenko on 17.08.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = user.characteristic.amountPlovsPreparedInLife
        label2.text = user.characteristic.animalsHas
        label3.text = user.characteristic.hobbies
        label4.text = user.characteristic.favoriteColor
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
    }


}
