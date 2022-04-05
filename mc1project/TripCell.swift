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

        }
    }
    @IBOutlet weak var tripName: UILabel!
    
    @IBOutlet weak var tripDescription: UILabel!
}
