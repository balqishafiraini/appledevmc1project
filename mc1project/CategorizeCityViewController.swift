//
//  CategorizeCityViewController.swift
//  mc1project
//
//  Created by Balqis on 06/04/22.
//

import UIKit

class CategorizeCityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var categorizeTableView: UITableView!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    var category: CategoryModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let dataSelectedFromMain = category else { return }
        self.title = category?.cityName
        registerCell()
    }
    
    @objc func buttonclick() {
        print("clicked")
    }
    
    func registerCell() {
        categorizeTableView.register(UINib(nibName: "FoodCell", bundle: nil), forCellReuseIdentifier: "foodCellID")
        categorizeTableView.register(UINib(nibName: "TourismCell", bundle: nil), forCellReuseIdentifier: "tourismCellID")
        categorizeTableView.register(UINib(nibName: "AcommodationCell", bundle: nil), forCellReuseIdentifier: "acommodationCellID")
        categorizeTableView.register(UINib(nibName: "SliderCell", bundle: nil), forCellReuseIdentifier: "sliderCellID")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "Food"
        } else if section == 2 {
            return "Tourism"
        } else if section == 3 {
            return "Accommodation"
        } else {
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let headerView = view as? UITableViewHeaderFooterView
        else {
            return }
        headerView.textLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        headerView.textLabel?.textColor = UIColor(red: 0.00, green: 0.42, blue: 0.34, alpha: 1.00)
        headerView.textLabel?.frame = CGRect(x: 20, y: 8, width: 320, height: 20)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 200 : 125
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 1 {
            
        guard let cellFood = (tableView.dequeueReusableCell(withIdentifier: "foodCellID", for: indexPath) as? FoodCell) else { return UITableViewCell() }
            cellFood.foodObject = category?.cityAttribute
            return cellFood
        }
        else if indexPath.section == 2 {
            let cellTourism = (tableView.dequeueReusableCell(withIdentifier: "tourismCellID", for: indexPath) as? TourismCell)!
            cellTourism.tourismObject = category?.cityAttribute
            return cellTourism
        }
        else if indexPath.section == 3 {
            let cellAcommodation = (tableView.dequeueReusableCell(withIdentifier: "acommodationCellID", for: indexPath) as? AcommodationCell)!
            cellAcommodation.accommodationObject = category?.cityAttribute
            return cellAcommodation
        } else {
            let cellSlider = (tableView.dequeueReusableCell(withIdentifier: "sliderCellID", for: indexPath) as? SliderCell)!

            return cellSlider
        }
    }
}
