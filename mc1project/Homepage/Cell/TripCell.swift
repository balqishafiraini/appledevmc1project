//
//  TripCell.swift
//  mc1project
//
//  Created by Balqis on 07/04/22.
//

import UIKit

class TripCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var tripCollection: UICollectionView!
    
    var tripImageArray = ["bali", "semarang", "belitung"]
    var tripArray = ["Bali", "Semarang", "Belitung"]
    var tripDescArray = ["Pulau Seribu Pura", "Kota Lumpia", "Kota 1001 Warung Kopi"]
    var category: [CategoryModel] = [
        CategoryModel(image: "bali", cityName: "Bali", cityAttribute: CityModel(food: [FoodModel(foodName: "Bakso Son Haji Sony", foodImage: "baksoSony"), FoodModel(foodName: "Rumah Makan Jumbo Kakap", foodImage: "jumbokakap"), FoodModel(foodName: "Restaurant Rumah Kayu", foodImage: "rumahKayu"), FoodModel(foodName: "Rumah Makan New LG", foodImage: "newlg"), FoodModel(foodName: "Pempek 123", foodImage: "pempek123"), FoodModel(foodName: "Pindang Meranjat Riu", foodImage: "pindang")], tourism: [TourismModel(tourismName: "Pantai Marina", tourismImage: "pantaimarina"), TourismModel(tourismName: "Pantai Arang", tourismImage: "pantaiarang"), TourismModel(tourismName: "Pantai Gigi Hiu", tourismImage: "gigihiu"), TourismModel(tourismName: "Pulau Pahawang", tourismImage: "pahawang"), TourismModel(tourismName: "Air Terjun Way Lalaan", tourismImage: "waylalaan"), TourismModel(tourismName: "Mata Air Way Bekhak", tourismImage: "waybekhak")], accommodation: [AccommodationModel(accommodationName: "balqis transport", accommodationImage: "lampung"), AccommodationModel(accommodationName: "Wildan transport", accommodationImage: "lampung")])),
        CategoryModel(image: "semarang", cityName: "Semarang", cityAttribute: CityModel(food: [FoodModel(foodName: "Bakso Son Haji Sony", foodImage: "baksoSony"), FoodModel(foodName: "Rumah Makan Jumbo Kakap", foodImage: "jumbokakap"), FoodModel(foodName: "Restaurant Rumah Kayu", foodImage: "rumahKayu"), FoodModel(foodName: "Rumah Makan New LG", foodImage: "newlg"), FoodModel(foodName: "Pempek 123", foodImage: "pempek123"), FoodModel(foodName: "Pindang Meranjat Riu", foodImage: "pindang")], tourism: [TourismModel(tourismName: "Pantai Marina", tourismImage: "pantaimarina"), TourismModel(tourismName: "Pantai Arang", tourismImage: "pantaiarang"), TourismModel(tourismName: "Pantai Gigi Hiu", tourismImage: "gigihiu"), TourismModel(tourismName: "Pulau Pahawang", tourismImage: "pahawang"), TourismModel(tourismName: "Air Terjun Way Lalaan", tourismImage: "waylalaan"), TourismModel(tourismName: "Mata Air Way Bekhak", tourismImage: "waybekhak")], accommodation: [AccommodationModel(accommodationName: "balqis transport", accommodationImage: "lampung"), AccommodationModel(accommodationName: "Wildan transport", accommodationImage: "lampung")])),
        CategoryModel(image: "belitung", cityName: "Belitung", cityAttribute: CityModel(food: [FoodModel(foodName: "Bakso Son Haji Sony", foodImage: "baksoSony"), FoodModel(foodName: "Rumah Makan Jumbo Kakap", foodImage: "jumbokakap"), FoodModel(foodName: "Restaurant Rumah Kayu", foodImage: "rumahKayu"), FoodModel(foodName: "Rumah Makan New LG", foodImage: "newlg"), FoodModel(foodName: "Pempek 123", foodImage: "pempek123"), FoodModel(foodName: "Pindang Meranjat Riu", foodImage: "pindang")], tourism: [TourismModel(tourismName: "Pantai Marina", tourismImage: "pantaimarina"), TourismModel(tourismName: "Pantai Arang", tourismImage: "pantaiarang"), TourismModel(tourismName: "Pantai Gigi Hiu", tourismImage: "gigihiu"), TourismModel(tourismName: "Pulau Pahawang", tourismImage: "pahawang"), TourismModel(tourismName: "Air Terjun Way Lalaan", tourismImage: "waylalaan"), TourismModel(tourismName: "Mata Air Way Bekhak", tourismImage: "waybekhak")], accommodation: [AccommodationModel(accommodationName: "balqis transport", accommodationImage: "lampung"), AccommodationModel(accommodationName: "Wildan transport", accommodationImage: "lampung")]))
        
    ]


    override func awakeFromNib() {
        super.awakeFromNib()
        if let vc = UIViewController(nibName: "HomepageID", bundle: nil) as? ViewController {
            self.tripCollection.delegate = vc as? UICollectionViewDelegate
            self.tripCollection.dataSource = vc as? UICollectionViewDataSource
        }
        tripCollection.register(UINib(nibName: "TripItemCell", bundle: nil), forCellWithReuseIdentifier: "tripItemCellID")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tripArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cellTrip = (collectionView.dequeueReusableCell(withReuseIdentifier: "tripItemCellID", for: indexPath) as? TripItemCell)
        else {
            return UICollectionViewCell()
        }
        
        if let imgName = category[indexPath.row].image{
            cellTrip.tripImage.image = UIImage(named: imgName)
        }
        cellTrip.tripName.text = category[indexPath.row].cityName
        
        return cellTrip
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        if let del = self.delegate
        print("cell selected")
        
        if let nextVc = CategorizeCityViewController(nibName: "CategorizeCityID", bundle: nil) as? CategorizeCityViewController {
                nextVc.category = category[indexPath.row]
            print("nextvc")
            if let vc = ViewController(nibName: "HomepageID", bundle: nil) as? ViewController {
                vc.navigationController?.pushViewController(nextVc, animated: true)
                print("vc")
            }
        }
    }
    
 
    

}
