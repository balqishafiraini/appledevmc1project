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
            let overlay = UIView()
            overlay.backgroundColor = UIColor(white: 0, alpha: 0.15) //change to your liking
            overlay.frame = CGRect(x: 0, y: 0, width: acommodationImage.frame.width, height: acommodationImage.frame.height)

            acommodationImage.addSubview(overlay)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
