//
//  AcommodationItemCell.swift
//  mc1project
//
//  Created by Balqis on 08/04/22.
//

import UIKit

class AcommodationItemCell: UICollectionViewCell {

    @IBOutlet weak var acommodationLabel: UILabel!
    @IBOutlet weak var acommodationImage: UIImageView! {
        didSet {
        acommodationImage.layer.cornerRadius = 10
            acommodationImage.layer.masksToBounds = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
