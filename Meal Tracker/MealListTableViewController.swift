//
//  MealListTableViewController.swift
//  Meal Tracker
//
//  Created by student on 02.10.2018.
//  Copyright © 2018 STB. All rights reserved.
//

import UIKit

class MealListTableViewController: UITableViewController {

    var meals: [Meal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMeals()
    }

    func saveMeals() {
        
    }
    
    func loadMeals() {
        meals += [
            Meal(name: "Беконайзер", photo: UIImage(named: "Bekonizer")!, notes: "Говорят, там есть бекон", rating: 4, timestamp: Date()),
            Meal(name: "Чизбургер", photo: UIImage(named: "CheeseBurger")!, notes: "Без сыра", rating: 1, timestamp: Date()),
            Meal(name: "Тройной воппер", photo: UIImage(named: "TripleWashper")!, notes: "Разрывающий", rating: 5, timestamp: Date()),
            Meal(name: "СтейкХаус", photo: UIImage(named: "Steakhouse")!, notes: "Воппер + еще что-то", rating: 3, timestamp: Date()),
            Meal(name: "БигКинг", photo: UIImage(named: "BigKing")!, notes: "Это только название", rating: 2, timestamp: Date())
        ]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let meal = meals[indexPath.row]
        
        cell.textLabel?.text = meal.name
        cell.imageView?.image = meal.photo
        return cell
    }

}

