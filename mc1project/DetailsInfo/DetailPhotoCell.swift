//
//  DetailPhotoCell.swift
//  mc1project
//
//  Created by Vendly on 12/04/22.
//

import UIKit

class DetailPhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var detailPhotoImg: UIImageView! {
        didSet {
            detailPhotoImg.layer.cornerRadius = 15
            detailPhotoImg.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var galleryImg: UIImageView! {
        didSet {
            galleryImg.layer.cornerRadius = 15
            galleryImg.layer.masksToBounds = true
        }
    }
}
