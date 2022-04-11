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
   
    var category: [CategoryModel] = [
        CategoryModel(image: "lampung", cityName: "Lampung", cityAttribute: CityModel(food: [FoodModel(foodName: "Bakso Son Haji Sony", foodImage: "baksoSony"), FoodModel(foodName: "Rumah Makan Jumbo Kakap", foodImage: "jumbokakap"), FoodModel(foodName: "Restaurant Rumah Kayu", foodImage: "rumahKayu"), FoodModel(foodName: "Rumah Makan New LG", foodImage: "newlg"), FoodModel(foodName: "Pempek 123", foodImage: "pempek123"), FoodModel(foodName: "Pindang Meranjat Riu", foodImage: "pindang")], tourism: [TourismModel(tourismName: "Pantai Marina", tourismImage: "pantaimarina"), TourismModel(tourismName: "Pantai Arang", tourismImage: "pantaiarang"), TourismModel(tourismName: "Pantai Gigi Hiu", tourismImage: "gigihiu"), TourismModel(tourismName: "Pulau Pahawang", tourismImage: "pahawang"), TourismModel(tourismName: "Air Terjun Way Lalaan", tourismImage: "waylalaan"), TourismModel(tourismName: "Mata Air Way Bekhak", tourismImage: "waybekhak")], accommodation: [AccommodationModel(accommodationName: "balqis transport", accommodationImage: "lampung"), AccommodationModel(accommodationName: "Wildan transport", accommodationImage: "lampung")])),
        CategoryModel(image: "medan", cityName: "Medan", cityAttribute: CityModel(food: [FoodModel(foodName: "rumah makan riu", foodImage: "medan"), FoodModel(foodName: "rumah makan balqis", foodImage: "medan")], tourism: [TourismModel(tourismName: "lembah hijau", tourismImage: "medan"), TourismModel(tourismName: "lembah kuning", tourismImage: "medan")], accommodation: [AccommodationModel(accommodationName: "balqis transport", accommodationImage: "medan"), AccommodationModel(accommodationName: "Wildan transport", accommodationImage: "medan")])),
        CategoryModel(image: "mentawai", cityName: "Mentawai", cityAttribute: CityModel(food: [FoodModel(foodName: "rumah makan riu", foodImage: "mentawai"), FoodModel(foodName: "rumah makan balqis", foodImage: "mentawai")], tourism: [TourismModel(tourismName: "lembah hijau", tourismImage: "mentawai"), TourismModel(tourismName: "lembah kuning", tourismImage: "mentawai")], accommodation: [AccommodationModel(accommodationName: "balqis transport", accommodationImage: "mentawai"), AccommodationModel(accommodationName: "Wildan transport", accommodationImage: "mentawai")])),
        CategoryModel(image: "solo", cityName: "Solo", cityAttribute: CityModel(food: [FoodModel(foodName: "rumah makan riu", foodImage: "solo"), FoodModel(foodName: "rumah makan balqis", foodImage: "solo")], tourism: [TourismModel(tourismName: "lembah hijau", tourismImage: "solo"), TourismModel(tourismName: "lembah kuning", tourismImage: "solo")], accommodation: [AccommodationModel(accommodationName: "balqis transport", accommodationImage: "solo"), AccommodationModel(accommodationName: "Wildan transport", accommodationImage: "solo")])),
        CategoryModel(image: "yogyakarta", cityName: "Yogyakarta", cityAttribute: CityModel(food: [FoodModel(foodName: "rumah makan riu", foodImage: "yogyakarta"), FoodModel(foodName: "rumah makan balqis", foodImage: "yogyakarta")], tourism: [TourismModel(tourismName: "lembah hijau", tourismImage: "yogyakarta"), TourismModel(tourismName: "lembah kuning", tourismImage: "yogyakarta")], accommodation: [AccommodationModel(accommodationName: "balqis transport", accommodationImage: "yogyakarta"), AccommodationModel(accommodationName: "Wildan transport", accommodationImage: "yogyakarta")]))
    ]
    
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
            return category.count
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
            cell.exploreImage.image = UIImage(named: category[indexPath.row].image ?? "")
            cell.exploreCity.text = category[indexPath.row].cityName
            
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "CategorizeCityID") as? CategorizeCityViewController {
            vc.category = category[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    
    
}
