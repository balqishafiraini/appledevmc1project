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
            let overlay = UIView()
                        overlay.backgroundColor = UIColor(white: 0, alpha: 0.3) //change to your liking
                        overlay.frame = CGRect(x: 0, y: 130, width: tripImage.frame.width, height: tripImage.frame.height)
                        tripImage.addSubview(overlay)
        }
    }
    
    @IBOutlet weak var tripName: UILabel!
    
    @IBOutlet weak var tripDesc: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
