//
//  User.swift
//  Homework5_Morozenko
//
//  Created by Danil Morozenko on 17.08.2022.
//

import Foundation

struct User {
    let armenianName: String
    let characteristic: Characteristic
    
    static func getUser() -> User {
        User(
            armenianName: "Danil Jan",
            characteristic: Characteristic(
                amountPlovsPreparedInLife: "About 30 times, and yes, I love to cook on fire",
                animalsHas: "Two husky dogs (Kasper and Teya), and one cute and bloodthirsty cat Vincent",
                hobbies: "Basketball, fishing, sailing (I'm the captain of sailboat), snowboarding",
                favoriteColor: "Purple because of Donatello from Ninja Turtles")
        )
    }
}

struct Characteristic {
    let amountPlovsPreparedInLife: String
    let animalsHas: String
    let hobbies: String
    let favoriteColor: String
}

