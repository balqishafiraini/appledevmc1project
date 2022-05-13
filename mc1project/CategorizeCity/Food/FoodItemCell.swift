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
            let overlay = UIView()
            overlay.backgroundColor = UIColor(white: 0, alpha: 0.3) //change to your liking
            overlay.frame = CGRect(x: 0, y: 85, width: foodImage.frame.width, height: foodImage.frame.height)

            foodImage.addSubview(overlay)
        }
    }

    @IBOutlet weak var foodLabel: UILabel! {
        didSet {
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

}
