//
//  ViewController.swift
//  TableView
//
//  Created by Pedro Henrique de Moura on 22/10/19.
//  Copyright © 2019 Pedro Moura. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let cellIdentifier = "CellIdentifier"
    var fruits: [String] = []
    var alphabetizedFruits = [String: [String]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fruits = ["Apple", "Pineapple", "Orange", "Blackberry", "Banana", "Pear", "Kiwi", "Strawberry", "Mango", "Walnut", "Apricot", "Tomato", "Almond",            "Date", "Melon", "Water Melon", "Lemon", "Coconut", "Fig", "Passionfruit", "Star Fruit", "Clementin", "Citron", "Cherry", "Cranberry"]
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //MAKE: Number Rows in TableViewCell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    //MAKE: Render View in Cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
       // Fetch Fruit
       let fruit = fruits[indexPath.row]
        
       // Configure Cell
       cell.textLabel?.text = fruit
        
       return cell
    }
    
    //MAKE: Cell Selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(fruits[indexPath.row])
    }
}

