//
//  TabBarGalleryController.swift
//  mc1project
//
//  Created by Vendly on 11/04/22.
//

import UIKit

class TabBarGalleryController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var galleryCollection: UICollectionView!
    
    var detailGalleryArr = ["bali", "bali2", "bali3", "bali", "bali2", "bali3", "bali", "bali2", "bali3", "bali", "bali2", "bali3", "bali", "bali2", "bali3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        galleryCollection.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return detailGalleryArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "galleryCellID", for: indexPath) as? DetailPhotoCell)!
        cell.galleryImg.image = UIImage(named: detailGalleryArr[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let flowayout = collectionViewLayout as? UICollectionViewFlowLayout
            let space: CGFloat = (flowayout?.minimumInteritemSpacing ?? 0.0) + (flowayout?.sectionInset.left ?? 0.0) + (flowayout?.sectionInset.right ?? 0.0)
            let size:CGFloat = (galleryCollection.frame.size.width - space) / 2.0
            return CGSize(width: size, height: size)
        }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
