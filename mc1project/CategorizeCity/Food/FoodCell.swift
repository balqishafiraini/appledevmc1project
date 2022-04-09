//
//  FoodCell.swift
//  mc1project
//
//  Created by Wildan Budi on 09/04/22.
//

import UIKit

class FoodCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var foodCollection: UICollectionView!
    
    var foodImageArray = ["bali2", "bali3", "bali2", "bali3", "bali2", "bali3"]
    var foodLabelArray = ["Bandung", "Semarang", "Semarang", "Semarang", "Semarang", "Semarang"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        foodCollection.register(UINib(nibName: "FoodItemCell", bundle: nil), forCellWithReuseIdentifier: "foodItemCellID")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let foodCell = (collectionView.dequeueReusableCell(withReuseIdentifier: "foodItemCellID", for: indexPath) as? FoodItemCell)!
        foodCell.foodImage.image = UIImage(named: foodImageArray[indexPath.row])
        foodCell.foodLabel.text = foodLabelArray[indexPath.row]
        
        return foodCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}
