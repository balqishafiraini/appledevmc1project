//
//  AcommodationCell.swift
//  mc1project
//
//  Created by Balqis on 08/04/22.
//

import UIKit

class AcommodationCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var acommodationCollection: UICollectionView!
    
    var accommodationObject: CityModel? {
        didSet {
            setupCell()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        acommodationCollection.register(UINib(nibName: "AcommodationItemCell", bundle: nil), forCellWithReuseIdentifier: "acommodationItemCellID")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell() {
        acommodationCollection.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return accommodationObject?.accommodation?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cellAcommodation = (collectionView.dequeueReusableCell(withReuseIdentifier: "acommodationItemCellID", for: indexPath) as? AcommodationItemCell)!
        cellAcommodation.acommodationImage.image = UIImage(named: accommodationObject?.accommodation?[indexPath.row].accommodationImage ?? "")
            cellAcommodation.acommodationLabel.text = accommodationObject?.accommodation?[indexPath.row].accommodationName

            return cellAcommodation
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}
