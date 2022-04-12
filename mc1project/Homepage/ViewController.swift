//
//  ViewController.swift
//  mc1project
//
//  Created by Balqis on 31/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, TripCellDelegate {
    
    
    //HOMEPAGE
    @IBOutlet weak var tableView: UITableView!
    
    var counterExplore = 0
    
    //HOMEPAGE
    // datasourcePopular
    
    // datasourceExplore
   
    var category: [CategoryModel] = [
        CategoryModel(
            image: "lampung",
            cityName: "Lampung",
            isPopular: false,
            cityAttribute:
                CityModel(
                    slider: ["bali", "yogyakarta"],
                    food: [FoodModel(
                        foodName: "Bakso Son Haji Sony",
                        foodImage: "baksoSony"),
                           FoodModel(
                            foodName: "Rumah Makan Jumbo Kakap",
                            foodImage: "jumbokakap"),
                           FoodModel(
                            foodName: "Restaurant Rumah Kayu",
                            foodImage: "rumahKayu"),
                           FoodModel(
                            foodName: "Rumah Makan New LG",
                            foodImage: "newlg"),
                           FoodModel(
                            foodName: "Pempek 123",
                            foodImage: "pempek123"),
                           FoodModel(
                            foodName: "Pindang Meranjat Riu",
                            foodImage: "pindang")],
                    tourism: [TourismModel(
                        tourismName: "Pantai Marina",
                        tourismImage: "pantaimarina"),
                              TourismModel(
                                tourismName: "Pantai Arang",
                                tourismImage: "pantaiarang"),
                              TourismModel(
                                tourismName: "Pantai Gigi Hiu",
                                tourismImage: "gigihiu"),
                              TourismModel(
                                tourismName: "Pulau Pahawang",
                                tourismImage: "pahawang"),
                              TourismModel(
                                tourismName: "Air Terjun Way Lalaan",
                                tourismImage: "waylalaan"),
                              TourismModel(tourismName: "Mata Air Way Bekhak",
                                           tourismImage: "waybekhak")],
                    accommodation: [
                        AccommodationModel(
                            accommodationName: "balqis transport",
                            accommodationImage: "lampung"),
                        AccommodationModel(
                            accommodationName: "Wildan transport",
                            accommodationImage: "lampung")])),
        CategoryModel(
            image: "medan",
            cityName: "Medan",
            isPopular: false,
            cityAttribute:
                CityModel(
                    slider: ["bali", "yogyakarta"],
                    food: [FoodModel(
                        foodName: "Bakso Son Haji Sony",
                        foodImage: "baksoSony"),
                           FoodModel(
                            foodName: "Rumah Makan Jumbo Kakap",
                            foodImage: "jumbokakap"),
                           FoodModel(
                            foodName: "Restaurant Rumah Kayu",
                            foodImage: "rumahKayu"),
                           FoodModel(
                            foodName: "Rumah Makan New LG",
                            foodImage: "newlg"),
                           FoodModel(
                            foodName: "Pempek 123",
                            foodImage: "pempek123"),
                           FoodModel(
                            foodName: "Pindang Meranjat Riu",
                            foodImage: "pindang")],
                    tourism: [TourismModel(
                        tourismName: "Pantai Marina",
                        tourismImage: "pantaimarina"),
                              TourismModel(
                                tourismName: "Pantai Arang",
                                tourismImage: "pantaiarang"),
                              TourismModel(
                                tourismName: "Pantai Gigi Hiu",
                                tourismImage: "gigihiu"),
                              TourismModel(
                                tourismName: "Pulau Pahawang",
                                tourismImage: "pahawang"),
                              TourismModel(
                                tourismName: "Air Terjun Way Lalaan",
                                tourismImage: "waylalaan"),
                              TourismModel(tourismName: "Mata Air Way Bekhak",
                                           tourismImage: "waybekhak")],
                    accommodation: [
                        AccommodationModel(
                            accommodationName: "balqis transport",
                            accommodationImage: "lampung"),
                        AccommodationModel(
                            accommodationName: "Wildan transport",
                            accommodationImage: "lampung")])),
        CategoryModel(
            image: "mentawai",
            cityName: "Mentawai",
            isPopular: false,
            cityAttribute:
                CityModel(
                    slider: ["bali", "yogyakarta"],
                    food: [FoodModel(
                        foodName: "Bakso Son Haji Sony",
                        foodImage: "baksoSony"),
                           FoodModel(
                            foodName: "Rumah Makan Jumbo Kakap",
                            foodImage: "jumbokakap"),
                           FoodModel(
                            foodName: "Restaurant Rumah Kayu",
                            foodImage: "rumahKayu"),
                           FoodModel(
                            foodName: "Rumah Makan New LG",
                            foodImage: "newlg"),
                           FoodModel(
                            foodName: "Pempek 123",
                            foodImage: "pempek123"),
                           FoodModel(
                            foodName: "Pindang Meranjat Riu",
                            foodImage: "pindang")],
                    tourism: [TourismModel(
                        tourismName: "Pantai Marina",
                        tourismImage: "pantaimarina"),
                              TourismModel(
                                tourismName: "Pantai Arang",
                                tourismImage: "pantaiarang"),
                              TourismModel(
                                tourismName: "Pantai Gigi Hiu",
                                tourismImage: "gigihiu"),
                              TourismModel(
                                tourismName: "Pulau Pahawang",
                                tourismImage: "pahawang"),
                              TourismModel(
                                tourismName: "Air Terjun Way Lalaan",
                                tourismImage: "waylalaan"),
                              TourismModel(tourismName: "Mata Air Way Bekhak",
                                           tourismImage: "waybekhak")],
                    accommodation: [
                        AccommodationModel(
                            accommodationName: "balqis transport",
                            accommodationImage: "lampung"),
                        AccommodationModel(
                            accommodationName: "Wildan transport",
                            accommodationImage: "lampung")])),
        CategoryModel(
            image: "solo",
            cityName: "Solo",
            isPopular: false,
            cityAttribute:
                CityModel(
                    slider: ["bali", "yogyakarta"],
                    food: [FoodModel(
                        foodName: "Bakso Son Haji Sony",
                        foodImage: "baksoSony"),
                           FoodModel(
                            foodName: "Rumah Makan Jumbo Kakap",
                            foodImage: "jumbokakap"),
                           FoodModel(
                            foodName: "Restaurant Rumah Kayu",
                            foodImage: "rumahKayu"),
                           FoodModel(
                            foodName: "Rumah Makan New LG",
                            foodImage: "newlg"),
                           FoodModel(
                            foodName: "Pempek 123",
                            foodImage: "pempek123"),
                           FoodModel(
                            foodName: "Pindang Meranjat Riu",
                            foodImage: "pindang")],
                    tourism: [TourismModel(
                        tourismName: "Pantai Marina",
                        tourismImage: "pantaimarina"),
                              TourismModel(
                                tourismName: "Pantai Arang",
                                tourismImage: "pantaiarang"),
                              TourismModel(
                                tourismName: "Pantai Gigi Hiu",
                                tourismImage: "gigihiu"),
                              TourismModel(
                                tourismName: "Pulau Pahawang",
                                tourismImage: "pahawang"),
                              TourismModel(
                                tourismName: "Air Terjun Way Lalaan",
                                tourismImage: "waylalaan"),
                              TourismModel(tourismName: "Mata Air Way Bekhak",
                                           tourismImage: "waybekhak")],
                    accommodation: [
                        AccommodationModel(
                            accommodationName: "balqis transport",
                            accommodationImage: "lampung"),
                        AccommodationModel(
                            accommodationName: "Wildan transport",
                            accommodationImage: "lampung")])),
        CategoryModel(
            image: "yogyakarta",
            cityName: "Yogyakarta",
            isPopular: false,
            cityAttribute:
                CityModel(
                    slider: ["bali", "yogyakarta"],
                    food: [FoodModel(
                        foodName: "Bakso Son Haji Sony",
                        foodImage: "baksoSony"),
                           FoodModel(
                            foodName: "Rumah Makan Jumbo Kakap",
                            foodImage: "jumbokakap"),
                           FoodModel(
                            foodName: "Restaurant Rumah Kayu",
                            foodImage: "rumahKayu"),
                           FoodModel(
                            foodName: "Rumah Makan New LG",
                            foodImage: "newlg"),
                           FoodModel(
                            foodName: "Pempek 123",
                            foodImage: "pempek123"),
                           FoodModel(
                            foodName: "Pindang Meranjat Riu",
                            foodImage: "pindang")],
                    tourism: [TourismModel(
                        tourismName: "Pantai Marina",
                        tourismImage: "pantaimarina"),
                              TourismModel(
                                tourismName: "Pantai Arang",
                                tourismImage: "pantaiarang"),
                              TourismModel(
                                tourismName: "Pantai Gigi Hiu",
                                tourismImage: "gigihiu"),
                              TourismModel(
                                tourismName: "Pulau Pahawang",
                                tourismImage: "pahawang"),
                              TourismModel(
                                tourismName: "Air Terjun Way Lalaan",
                                tourismImage: "waylalaan"),
                              TourismModel(tourismName: "Mata Air Way Bekhak",
                                           tourismImage: "waybekhak")],
                    accommodation: [
                        AccommodationModel(
                            accommodationName: "balqis transport",
                            accommodationImage: "lampung"),
                        AccommodationModel(
                            accommodationName: "Wildan transport",
                            accommodationImage: "lampung")])),
        CategoryModel(
            image: "bali",
            cityName: "Bali",
            isPopular: true,
            cityDesc: "Pulau Seribu Pura",
            cityAttribute:
                CityModel(
                    slider: ["bali", "yogyakarta"],
                    food: [FoodModel(
                        foodName: "Bakso Son Haji Sony",
                        foodImage: "baksoSony"),
                           FoodModel(
                            foodName: "Rumah Makan Jumbo Kakap",
                            foodImage: "jumbokakap"),
                           FoodModel(
                            foodName: "Restaurant Rumah Kayu",
                            foodImage: "rumahKayu"),
                           FoodModel(
                            foodName: "Rumah Makan New LG",
                            foodImage: "newlg"),
                           FoodModel(
                            foodName: "Pempek 123",
                            foodImage: "pempek123"),
                           FoodModel(
                            foodName: "Pindang Meranjat Riu",
                            foodImage: "pindang")],
                    tourism: [TourismModel(
                        tourismName: "Pantai Marina",
                        tourismImage: "pantaimarina"),
                              TourismModel(
                                tourismName: "Pantai Arang",
                                tourismImage: "pantaiarang"),
                              TourismModel(
                                tourismName: "Pantai Gigi Hiu",
                                tourismImage: "gigihiu"),
                              TourismModel(
                                tourismName: "Pulau Pahawang",
                                tourismImage: "pahawang"),
                              TourismModel(
                                tourismName: "Air Terjun Way Lalaan",
                                tourismImage: "waylalaan"),
                              TourismModel(tourismName: "Mata Air Way Bekhak",
                                           tourismImage: "waybekhak")],
                    accommodation: [
                        AccommodationModel(
                            accommodationName: "balqis transport",
                            accommodationImage: "lampung"),
                        AccommodationModel(
                            accommodationName: "Wildan transport",
                            accommodationImage: "lampung")])),
        CategoryModel(
            image: "semarang",
            cityName: "Semarang",
            isPopular: true,
            cityDesc: "Kota Lumpia",
            cityAttribute:
                CityModel(
                    slider: ["bali", "yogyakarta"],
                    food: [FoodModel(
                        foodName: "Bakso Son Haji Sony",
                        foodImage: "baksoSony"),
                           FoodModel(
                            foodName: "Rumah Makan Jumbo Kakap",
                            foodImage: "jumbokakap"),
                           FoodModel(
                            foodName: "Restaurant Rumah Kayu",
                            foodImage: "rumahKayu"),
                           FoodModel(
                            foodName: "Rumah Makan New LG",
                            foodImage: "newlg"),
                           FoodModel(
                            foodName: "Pempek 123",
                            foodImage: "pempek123"),
                           FoodModel(
                            foodName: "Pindang Meranjat Riu",
                            foodImage: "pindang")],
                    tourism: [TourismModel(
                        tourismName: "Pantai Marina",
                        tourismImage: "pantaimarina"),
                              TourismModel(
                                tourismName: "Pantai Arang",
                                tourismImage: "pantaiarang"),
                              TourismModel(
                                tourismName: "Pantai Gigi Hiu",
                                tourismImage: "gigihiu"),
                              TourismModel(
                                tourismName: "Pulau Pahawang",
                                tourismImage: "pahawang"),
                              TourismModel(
                                tourismName: "Air Terjun Way Lalaan",
                                tourismImage: "waylalaan"),
                              TourismModel(tourismName: "Mata Air Way Bekhak",
                                           tourismImage: "waybekhak")],
                    accommodation: [
                        AccommodationModel(
                            accommodationName: "balqis transport",
                            accommodationImage: "lampung"),
                        AccommodationModel(
                            accommodationName: "Wildan transport",
                            accommodationImage: "lampung")])),
        CategoryModel(
            image: "belitung",
            cityName: "Belitung",
            isPopular: true,
            cityDesc: "Negeri Laskar Pelangi",
            cityAttribute:
                CityModel(
                    slider: ["bali", "yogyakarta"],
                    food: [FoodModel(
                        foodName: "Bakso Son Haji Sony",
                        foodImage: "baksoSony"),
                           FoodModel(
                            foodName: "Rumah Makan Jumbo Kakap",
                            foodImage: "jumbokakap"),
                           FoodModel(
                            foodName: "Restaurant Rumah Kayu",
                            foodImage: "rumahKayu"),
                           FoodModel(
                            foodName: "Rumah Makan New LG",
                            foodImage: "newlg"),
                           FoodModel(
                            foodName: "Pempek 123",
                            foodImage: "pempek123"),
                           FoodModel(
                            foodName: "Pindang Meranjat Riu",
                            foodImage: "pindang")],
                    tourism: [TourismModel(
                        tourismName: "Pantai Marina",
                        tourismImage: "pantaimarina"),
                              TourismModel(
                                tourismName: "Pantai Arang",
                                tourismImage: "pantaiarang"),
                              TourismModel(
                                tourismName: "Pantai Gigi Hiu",
                                tourismImage: "gigihiu"),
                              TourismModel(
                                tourismName: "Pulau Pahawang",
                                tourismImage: "pahawang"),
                              TourismModel(
                                tourismName: "Air Terjun Way Lalaan",
                                tourismImage: "waylalaan"),
                              TourismModel(tourismName: "Mata Air Way Bekhak",
                                           tourismImage: "waybekhak")],
                    accommodation: [
                        AccommodationModel(
                            accommodationName: "balqis transport",
                            accommodationImage: "lampung"),
                        AccommodationModel(
                            accommodationName: "Wildan transport",
                            accommodationImage: "lampung")]))
    ]
    
    var exploreCategory: [CategoryModel] = []
    var tripCategory: [CategoryModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        countExplore()
    }
    
    func registerCell() {
        tableView.register(UINib(nibName: "TripCell", bundle: nil), forCellReuseIdentifier: "tripCellID")
        tableView.register(UINib(nibName: "ExploreCell", bundle: nil), forCellReuseIdentifier: "exploreCellID")
    }
    
    func countExplore() {
        
        for item in category {
            if item.isPopular == false {
                counterExplore += 1
                exploreCategory.append(item)
            } else {
                tripCategory.append(item)
            }
        }
    
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return counterExplore
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
            cell.objectModel = tripCategory
            cell.delegate = self
            return cell
        } else {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "exploreCellID", for: indexPath) as? ExploreCell)!
            cell.exploreImage.image = UIImage(named: exploreCategory[indexPath.row].image ?? "")
            cell.exploreCity.text = exploreCategory[indexPath.row].cityName
            
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "CategorizeCityID") as? CategorizeCityViewController {
            vc.category = exploreCategory[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    func navigateToDetail(dataSelected: CategoryModel?) {
        if let vc = storyboard?.instantiateViewController(identifier: "CategorizeCityID") as? CategorizeCityViewController {
            vc.category = dataSelected
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
}
