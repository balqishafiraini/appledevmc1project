//
//  CategorizeCityViewController.swift
//  mc1project
//
//  Created by Balqis on 06/04/22.
//

import UIKit

class CategorizeCityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var categorizeTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
    }
    
    func registerCell() {
        categorizeTableView.register(UINib(nibName: "FoodCell", bundle: nil), forCellReuseIdentifier: "foodCellID")
        categorizeTableView.register(UINib(nibName: "ExploreCell", bundle: nil), forCellReuseIdentifier: "exploreCellID")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else if section == 1 {
            return 2
        }
        else {
            return 3
    }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return indexPath.section == 0 ? 200 : 125
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if indexPath.section == 0 {
                let cellFood = (tableView.dequeueReusableCell(withIdentifier: "foodCellID", for: indexPath) as? FoodCell)!
                return cellFood
            }
            else if indexPath.section == 1 {
                let cellTourism = (tableView.dequeueReusableCell(withIdentifier: "tourismCellID", for: indexPath) as? TourismCell)!
                return cellTourism
            }
            else {
                let cellAcommodation = (tableView.dequeueReusableCell(withIdentifier: "acommodationCellID", for: indexPath) as? AcommodationCell)!
                return cellAcommodation
            }
}
}
