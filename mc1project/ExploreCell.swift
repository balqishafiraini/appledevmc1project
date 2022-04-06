//
//  ExploreCell.swift
//  mc1project
//
//  Created by Balqis on 05/04/22.
//

import UIKit

class ExploreCell: UICollectionViewCell {

    @IBOutlet weak var exploreCity: UILabel!
    @IBOutlet weak var exploreImage: UIImageView! {
        
        didSet {
            exploreImage.layer.cornerRadius = 20
            exploreImage.layer.masksToBounds = true

        }
    }

}
