//
//  ListCell.swift
//  mc1project
//
//  Created by Balqis on 05/04/22.
//

import UIKit

class ListCell: UICollectionViewCell {
    
    @IBOutlet weak var listDetailSwipeImage: UIImageView! {
        didSet {
        listDetailSwipeImage.layer.cornerRadius = 10
            listDetailSwipeImage.layer.masksToBounds = true
        }
    }
    
    
    @IBOutlet weak var listDetailSwipeName: UILabel!
 
    
    @IBOutlet weak var listDetailSwipeDesc: UILabel!
    
}
