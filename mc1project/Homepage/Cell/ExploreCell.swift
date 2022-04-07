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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
