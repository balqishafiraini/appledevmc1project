//
//  TourismItemCell.swift
//  mc1project
//
//  Created by Balqis on 08/04/22.
//

import UIKit

class TourismItemCell: UICollectionViewCell {

    @IBOutlet weak var tourismImage: UIImageView! {
        didSet {
        tourismImage.layer.cornerRadius = 10
            tourismImage.layer.masksToBounds = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
