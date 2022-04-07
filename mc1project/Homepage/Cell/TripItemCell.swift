//
//  TripItemCell.swift
//  mc1project
//
//  Created by Balqis on 07/04/22.
//

import UIKit

class TripItemCell: UICollectionViewCell {

    @IBOutlet weak var tripImage: UIImageView! {
        didSet {
        tripImage.layer.cornerRadius = 10
            tripImage.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var tripName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
