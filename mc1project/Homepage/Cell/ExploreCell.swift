//
//  ExploreItemCell.swift
//  mc1project
//
//  Created by Balqis on 07/04/22.
//

import UIKit

class ExploreCell: UITableViewCell {
    
    @IBOutlet weak var exploreCity: UILabel!
    
    @IBOutlet weak var exploreImage: UIImageView! {
        
        didSet {
            exploreImage.layer.cornerRadius = 20
            exploreImage.layer.masksToBounds = true
            let overlay = UIView()
                        overlay.backgroundColor = UIColor(white: 0, alpha: 0.45) //change to your liking
                        overlay.frame = CGRect(x: 0, y: 0, width: exploreImage.frame.width, height: exploreImage.frame.height)

                        exploreImage.addSubview(overlay)

        }
    }
    
    var exploreImageArray = ["bali2", "bali3", "bali2", "bali3", "bali2", "bali3"]
    var exploreCityArray = ["Bandung", "Semarang", "Semarang", "Semarang", "Semarang", "Semarang"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
