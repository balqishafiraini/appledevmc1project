//
//  FoodCell.swift
//  mc1project
//
//  Created by Balqis on 08/04/22.
//

import UIKit

class FoodCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var foodCollection: UICollectionView!
    
    var foodImageArray = ["bali", "bali2", "bali2"]
    var foodArray = ["Bali", "Wakatobi", "Bali"]

    override func awakeFromNib() {
        super.awakeFromNib()
        foodCollection.register(UINib(nibName: "FoodItemCell", bundle: nil), forCellWithReuseIdentifier: "foodItemCellID")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellFood = (collectionView.dequeueReusableCell(withReuseIdentifier: "foodItemCellID", for: indexPath) as? FoodItemCell)!
        cellFood.foodImage.image = UIImage(named: foodImageArray[indexPath.row])
        return cellFood
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}
