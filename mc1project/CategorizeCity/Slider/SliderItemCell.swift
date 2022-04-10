//
//  SliderItemCell.swift
//  mc1project
//
//  Created by Balqis on 10/04/22.
//

import UIKit

class SliderItemCell: UICollectionViewCell {

    @IBOutlet weak var sliderImage: UIImageView! {
        didSet {
        sliderImage.layer.cornerRadius = 10
        sliderImage.layer.masksToBounds = true
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
