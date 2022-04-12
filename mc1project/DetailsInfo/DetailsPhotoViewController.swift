//
//  DetailsPhotoViewController.swift
//  mc1project
//
//  Created by Vendly on 12/04/22.
//

import UIKit

class DetailsPhotoViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var backBtn: UIButton!
    
    @IBOutlet weak var detailPhotoCollection: UICollectionView!
    
    var detailPhotoArr: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailPhotoCollection.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print(detailPhotoArr)
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "detailPhotoID", for: indexPath) as? DetailPhotoCell)!
        cell.detailPhotoImg.image = UIImage(named: detailPhotoArr ?? "")
        return cell
    }
    
}
