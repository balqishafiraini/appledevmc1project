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

        }
    }
    
    var exploreImageArray = ["bali2", "bali3", "bali2", "bali3", "bali2", "bali3"]
    var exploreCityArray = ["Bandung", "Semarang", "Semarang", "Semarang", "Semarang", "Semarang"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
