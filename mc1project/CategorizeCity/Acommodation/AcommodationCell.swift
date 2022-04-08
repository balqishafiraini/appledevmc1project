//
//  AcommodationCell.swift
//  mc1project
//
//  Created by Balqis on 08/04/22.
//

import UIKit

class AcommodationCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var acommodationCollection: UICollectionView!
    
    var acommodationImageArray = ["bali", "bali2", "bali2"]
    var acommodationArray = ["Bali", "Wakatobi", "Bali"]


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        acommodationCollection.register(UINib(nibName: "AcommodationItemCell", bundle: nil), forCellWithReuseIdentifier: "acommodationItemCellID")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return acommodationArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cellAcommodation = (collectionView.dequeueReusableCell(withReuseIdentifier: "acommodationItemCellID", for: indexPath) as? AcommodationItemCell)!
            cellAcommodation.acommodationImage.image = UIImage(named: acommodationImageArray[indexPath.row])

            return cellAcommodation
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}
