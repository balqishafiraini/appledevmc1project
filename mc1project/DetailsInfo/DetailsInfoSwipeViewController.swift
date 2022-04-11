//
//  DetailsInfoSwipeViewController.swift
//  mc1project
//
//  Created by Balqis on 05/04/22.
//

import UIKit

class DetailsInfoSwipeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var swipeDetailInfoCollectionView: UICollectionView!
    

    
    // ARRAY CONTENT
    
    var listSwipeArray = [""]
    var listSwipeNameArray = [""]
    var listSwipeDescArray = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swipeDetailInfoCollectionView.reloadData()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listSwipeArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellList = (collectionView .dequeueReusableCell(withReuseIdentifier: "listCellID", for: indexPath) as? ListCell)!
        return cellList
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


