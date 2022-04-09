//
//  TourismCell.swift
//  mc1project
//
//  Created by Balqis on 08/04/22.
//

import UIKit

class TourismCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var tourismCollection: UICollectionView!
    
    var tourismImageArray = ["bali", "bali2", "bali2"]
    var tourismLabelArray = ["Bali", "Wakatobi", "Bali"]

    override func awakeFromNib() {
        super.awakeFromNib()
        tourismCollection.register(UINib(nibName: "TourismItemCell", bundle: nil), forCellWithReuseIdentifier: "tourismItemCellID")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tourismImageArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellTourism = (collectionView.dequeueReusableCell(withReuseIdentifier: "tourismItemCellID", for: indexPath) as? TourismItemCell)!
        cellTourism.tourismImage.image = UIImage(named: tourismImageArray[indexPath.row])
        cellTourism.tourismLabel.text = tourismLabelArray[indexPath.row]
        
        return cellTourism
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
  }
    
}
