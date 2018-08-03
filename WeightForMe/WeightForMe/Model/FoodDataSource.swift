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
    var imageURL: URL?
    var macros = ["Protein": 0.0, "Carbs": 0.0, "Fats": 0.0]
    var calories: Double {
        return macros["Protein"]! * 4 + macros["Carbs"]! * 4 + macros["Fats"]! * 9
    }

    init(name: String, imageURL: URL? = nil, macrosValues: [Double]) {
        self.name = name
        self.imageURL = imageURL
        self.macros = ["Protein": macrosValues[0], "Carbs": macrosValues[1], "Fats": macrosValues[2]]
    }
}
