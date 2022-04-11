//
//  DetailsPhotoViewController.swift
//  mc1project
//
//  Created by Vendly on 08/04/22.
//

import UIKit

class DetailsPhotoViewController: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tabBarView: UIView!
    
    @IBOutlet weak var deatilPhotoCollection: UICollectionView!
    
    var detailPhotoImageArr = ["bali", "bali2", "bali3", "bali", "bali2", "bali3", "bali", "bali2", "bali3", "bali", "bali2", "bali3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deatilPhotoCollection.dataSource = self
//        deatilPhotoCollection.delegate = self
//        deatilPhotoCollection.collectionViewLayout = UICollectionViewFlowLayout()
        customTabView()
    }

    @IBAction func onClickBackBtn(_ sender: UIButton) {
        let tag = sender.tag

        if tag == 1 {
            guard let backToInfo = self.storyboard?.instantiateViewController(withIdentifier:
                                "DetailsInfoViewController") as? DetailsInfoViewController else {return}
            contentView.addSubview(backToInfo.view)
            backToInfo.didMove(toParent: self)
        }
        
    }
    
    @IBAction func onClickTabBar(_ sender: UIButton) {
        
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
    
}

extension DetailsPhotoViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "DetailPhotoCell", for: indexPath) as? DetailPhotoCell)!
        cell.detailphotoImg.image = UIImage(named: detailPhotoImageArr[indexPath.row])
        return cell
    }

}

//extension DetailsPhotoViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 150, height: 250)
//    }
//}
