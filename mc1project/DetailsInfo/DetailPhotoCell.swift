//
//  DetailPhotoCell.swift
//  mc1project
//
//  Created by Vendly on 11/04/22.
//

import UIKit

class DetailPhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var detailPhotoImg: UIImageView! {
        didSet {
            detailPhotoImg.layer.cornerRadius = 15
            detailPhotoImg.layer.masksToBounds = true
        }
    }
    
}
