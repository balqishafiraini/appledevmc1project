//
//  ViewController.swift
//  mc1project
//
//  Created by Balqis on 31/03/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var exploreCollectionView: UICollectionView!

    // datasourcePopular
    var tripImageArray = ["bali", "bali2"]
    var tripArray = ["Bali", "Wakatobi"]
    var tripDescArray = ["Pulau Seribu Pura", "Pulau Komodo"]
    
    // datasourceExplore
    var exploreImageArray = ["bali2", "bali3"]
    var exploreCityArray = ["Bandung", "Semarang"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exploreCollectionView.reloadData()
        collectionView.reloadData()
    }
    
    //collectionview
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionView == exploreCollectionView ? exploreCityArray.count : tripArray.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == exploreCollectionView {
            let cellExplore = (collectionView.dequeueReusableCell(withReuseIdentifier: "exploreCellID", for: indexPath) as? ExploreCell)!
            cellExplore.exploreImage.image = UIImage(named: exploreImageArray[indexPath.row])
            cellExplore.exploreCity.text = exploreCityArray[indexPath.row]
            return cellExplore
        } else {
            let cellTrip = (collectionView.dequeueReusableCell(withReuseIdentifier: "tripCellID", for: indexPath) as? TripCell)!
            cellTrip.tripImage.image = UIImage(named: tripImageArray[indexPath.row])
            cellTrip.tripName.text = tripArray[indexPath.row]
            cellTrip.tripDescription.text = tripDescArray[indexPath.row]
            return cellTrip
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    

}
