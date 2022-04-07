//
//  TripCell.swift
//  mc1project
//
//  Created by Balqis on 07/04/22.
//

import UIKit

class TripCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var tripCollection: UICollectionView!
    
    var tripImageArray = ["bali", "bali2", "bali2"]
    var tripArray = ["Bali", "Wakatobi", "Bali"]
    var tripDescArray = ["Pulau Seribu Pura", "Pulau Komodo", "Pulau Komodo"]


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
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
            let cellTrip = (collectionView.dequeueReusableCell(withReuseIdentifier: "tripItemCellID", for: indexPath) as? TripItemCell)!
            cellTrip.tripImage.image = UIImage(named: tripImageArray[indexPath.row])
            cellTrip.tripName.text = tripArray[indexPath.row]
            return cellTrip
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}
