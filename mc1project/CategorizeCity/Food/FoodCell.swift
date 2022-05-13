//
//  FoodCell.swift
//  mc1project
//
//  Created by Wildan Budi on 09/04/22.
//

import UIKit

protocol FoodCellDelegate: AnyObject {
    func navigateToDetail(itemPassed: DetailModel?)
}

class FoodCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var foodCollection: UICollectionView!
    
    var foodObject: CityModel? {
        didSet {
            setupCell()
        }
    }
    
    weak var delegate: FoodCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        foodCollection.register(UINib(nibName: "FoodItemCell", bundle: nil), forCellWithReuseIdentifier: "foodItemCellID")
    }
    
    func setupCell() {
        foodCollection.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodObject?.food?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let foodCell = (collectionView.dequeueReusableCell(withReuseIdentifier: "foodItemCellID", for: indexPath) as? FoodItemCell)!
        foodCell.foodImage.image = UIImage(named: foodObject?.food?[indexPath.row].foodImage ?? "")
        foodCell.foodLabel.text = foodObject?.food?[indexPath.row].foodName ?? ""
        
        return foodCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let data = foodObject?.food?[indexPath.row].detail?[0] {
            self.delegate?.navigateToDetail(itemPassed: data)
        }
    }
    
}
