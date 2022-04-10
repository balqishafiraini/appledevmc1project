//
//  TourismItemCell.swift
//  mc1project
//
//  Created by Balqis on 08/04/22.
//

import UIKit

class TourismItemCell: UICollectionViewCell {

    @IBOutlet weak var tourismLabel: UILabel!
    @IBOutlet weak var tourismImage: UIImageView! {
        didSet {
        tourismImage.layer.cornerRadius = 10
            tourismImage.layer.masksToBounds = true
            let overlay = UIView()
            overlay.backgroundColor = UIColor(white: 0, alpha: 0.15) //change to your liking
            overlay.frame = CGRect(x: 0, y: 0, width: tourismImage.frame.width, height: tourismImage.frame.height)

            tourismImage.addSubview(overlay)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
