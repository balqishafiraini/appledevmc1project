//
//  ViewController.swift
//  mc1project
//
//  Created by Balqis on 31/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    //HOMEPAGE
    @IBOutlet weak var tableView: UITableView!
    
    //HOMEPAGE
    // datasourcePopular
    
    // datasourceExplore
    var exploreImageArray = ["lampung", "medan", "mentawai", "solo", "yogyakarta"]
    var exploreCityArray = ["Lampung", "Medan", "Mentawai", "Solo", "Yogyakarta"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        
    }
    
    func registerCell() {
        tableView.register(UINib(nibName: "TripCell", bundle: nil), forCellReuseIdentifier: "tripCellID")
        tableView.register(UINib(nibName: "ExploreCell", bundle: nil), forCellReuseIdentifier: "exploreCellID")
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return exploreCityArray.count
        }
    }
    
    //HEADER TITLE
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Popular City" : "Explore More"

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
    
    // TRIP CELL
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "tripCellID", for: indexPath) as? TripCell)!
            
            return cell
        } else {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "exploreCellID", for: indexPath) as? ExploreCell)!
            cell.exploreImage.image = UIImage(named: exploreImageArray[indexPath.row])
            cell.exploreCity.text = exploreCityArray[indexPath.row]
            
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "CategorizeCityID") as? CategorizeCityViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
