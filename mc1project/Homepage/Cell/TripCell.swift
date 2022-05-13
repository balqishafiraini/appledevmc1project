//
//  TripCell.swift
//  mc1project
//
//  Created by Balqis on 07/04/22.
//

import UIKit

protocol TripCellDelegate: AnyObject {
    func navigateToDetail(dataSelected: CategoryModel?)
}

class TripCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var tripCollection: UICollectionView!

    var objectModel: [CategoryModel]?
    
    weak var delegate: TripCellDelegate?

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
        return objectModel?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cellTrip = (collectionView.dequeueReusableCell(withReuseIdentifier: "tripItemCellID", for: indexPath) as? TripItemCell)!
        cellTrip.tripImage.image = UIImage(named: objectModel?[indexPath.row].image ?? "")
        cellTrip.tripName.text = objectModel?[indexPath.row].cityName
        cellTrip.tripDesc.text = objectModel?[indexPath.row].cityDesc
            return cellTrip
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        self.delegate?.navigateToDetail(dataSelected: objectModel?[indexPath.row])
    }
    
}
