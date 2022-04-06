//
//  TripCell.swift
//  mc1project
//
//  Created by Balqis on 05/04/22.
//

import UIKit

class TripCell: UICollectionViewCell {
    
    @IBOutlet weak var tripImage: UIImageView! {
        didSet {
        tripImage.layer.cornerRadius = 10
            tripImage.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var tripName: UILabel!
    
    @IBOutlet weak var tripDescription: UILabel!
}
