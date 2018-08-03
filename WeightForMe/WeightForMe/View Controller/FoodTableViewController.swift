//
//  ViewController.swift
//  WeightForMe
//
//  Created by Bhargav Vasist on 24/07/18.
//  Copyright © 2018 Bhargav Vasist. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var foodItemsArray = [FoodModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "FoodTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "foodCell")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        fetchFoodItems()
    }
    private func fetchFoodItems() {
        for randInt in 0..<9 {
            let object = FoodModel(name: String(randInt), macrosValues: [Double(randInt+1), Double(randInt+2), Double(randInt+3)])
            self.foodItemsArray.append(object)
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItemsArray.count
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as? FoodTableViewCell
        cell?.setupCellWith(item: foodItemsArray[indexPath.row])
        return cell!
    }
}
