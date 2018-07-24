//
//  FoodDataSource.swift
//  WeightForMe
//
//  Created by Bhargav Vasist on 25/07/18.
//  Copyright © 2018 Bhargav Vasist. All rights reserved.
//

import Foundation

class FoodModel {
    var name: String
    var macros = [
        "Protein": 0,
        "Carbs": 0,
        "Fats": 0
    ]
    var calories: Float{
        macros["Protein"] * 4 + macros["Carbs"] * 4 + macros["Fats"] * 9
    }
    init() {
        self.name = ""
    }
}
