//
//  FoodTableViewCell.swift
//  WeightForMe
//
//  Created by Bhargav Vasist on 25/07/18.
//  Copyright © 2018 Bhargav Vasist. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodQuantityTextField: UITextField!
    
    @IBOutlet weak var caloriesCountLabel: UILabel!
    
    @IBOutlet weak var proteinCountLabel: UILabel!
    @IBOutlet weak var fatsCountLabel: UILabel!
    @IBOutlet weak var carbsCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
