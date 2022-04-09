//
//  FoodItemCell.swift
//  mc1project
//
//  Created by Wildan Budi on 09/04/22.
//

import UIKit

class FoodItemCell: UICollectionViewCell {
    
    @IBOutlet weak var foodImage: UIImageView! {
        didSet {
            foodImage.layer.cornerRadius = 10
            foodImage.layer.masksToBounds = true
        }
    }

    @IBOutlet weak var foodLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
