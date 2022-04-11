//
//  DetailsPhotoViewController.swift
//  mc1project
//
//  Created by Vendly on 11/04/22.
//

import UIKit

class DetailsPhotoViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var tabBarView: UIView!
    
    @IBOutlet weak var detailPhotoCollView: UICollectionView!
    
    var detailPhotoImageArr = ["bali", "bali2", "bali3", "bali", "bali2", "bali3", "bali", "bali2", "bali3", "bali", "bali2", "bali3", "bali", "bali2", "bali3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customTabView()
//        detailPhotoCollView.dataSource = self
        detailPhotoCollView.reloadData()
    }

    func customTabView() {
           tabBarView.layer.cornerRadius = 15
           tabBarView.clipsToBounds = true
           tabBarView.layer.masksToBounds = false

           tabBarView.layer.shadowColor = UIColor.gray.cgColor
           tabBarView.layer.shadowOpacity = 1
           tabBarView.layer.shadowOffset = CGSize(width: 0, height: 2)
           tabBarView.layer.shadowRadius = 3

           tabBarView.layer.shouldRasterize = true
           tabBarView.layer.rasterizationScale = UIScreen.main.scale
       }
    
    @IBAction func onClickPhotoBar(_ sender: UIButton) {
        print("hello")
//        let tag = sender.tag
//
//        print(tag)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return detailPhotoImageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "detailPhotoCellID", for: indexPath) as? DetailPhotoCell)!
                cell.detailPhotoImg.image = UIImage(named: detailPhotoImageArr[indexPath.row])
                return cell
            }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    }



//extension DetailsPhotoViewController: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 15
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "DetailPhotoCell", for: indexPath) as? DetailPhotoCell)!
//        cell.detailPhotoImg.image = UIImage(named: detailPhotoImageArr[indexPath.row])
//        return cell
//    }
//}
