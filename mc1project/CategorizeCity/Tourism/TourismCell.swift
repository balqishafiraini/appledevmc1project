//
//  TourismCell.swift
//  mc1project
//
//  Created by Balqis on 08/04/22.
//

import UIKit

protocol TourismCellDelegate: AnyObject {
    func navigateToDetail(itemPassed: DetailModel?)
}

class TourismCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var tourismCollection: UICollectionView!
    
    var tourismObject: CityModel? {
        didSet {
            setupCell()
        }
    }
    
    weak var delegate: TourismCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        tourismCollection.register(UINib(nibName: "TourismItemCell", bundle: nil), forCellWithReuseIdentifier: "tourismItemCellID")
    }
    
    func setupCell() {
        tourismCollection.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tourismObject?.tourism?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellTourism = (collectionView.dequeueReusableCell(withReuseIdentifier: "tourismItemCellID", for: indexPath) as? TourismItemCell)!
        cellTourism.tourismImage.image = UIImage(named: tourismObject?.tourism?[indexPath.row].tourismImage ?? "")
        cellTourism.tourismLabel.text = tourismObject?.tourism?[indexPath.row].tourismName
        
        return cellTourism
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let data = tourismObject?.food?[indexPath.row].detail?[0] {
            self.delegate?.navigateToDetail(itemPassed: data)
        }
    }
    
}
