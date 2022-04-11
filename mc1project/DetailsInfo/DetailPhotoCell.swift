//
//  DetailPhotoCell.swift
//  mc1project
//
//  Created by Vendly on 10/04/22.
//

import UIKit

class DetailPhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var detailphotoImg: UIImageView! {
        didSet {
            detailphotoImg.layer.cornerRadius = 15
            detailphotoImg.layer.masksToBounds = true
        }
    }
}
