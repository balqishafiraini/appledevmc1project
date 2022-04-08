//
//  FoodItemCell.swift
//  mc1project
//
//  Created by Balqis on 08/04/22.
//

import UIKit

class FoodItemCell: UICollectionViewCell {
    
    @IBOutlet weak var foodImage: UIImageView! {
        didSet {
        foodImage.layer.cornerRadius = 10
            foodImage.layer.masksToBounds = true
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
