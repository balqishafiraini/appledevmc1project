//
//  SliderCell.swift
//  mc1project
//
//  Created by Balqis on 10/04/22.
//

import UIKit

class SliderCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {


    @IBOutlet weak var sliderCollection: UICollectionView!
    
    @IBOutlet weak var pageControl: UIPageControl! 
    
    var sliderImageArray = ["bali", "bali2", "bali2", "bali2", "bali2"]
    var sliderLabelArray = ["Bali", "Wakatobi", "Bali", "Wakatobi", "Bali"]
    
    var thisWidth:CGFloat = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        sliderCollection.register(UINib(nibName: "SliderItemCell", bundle: nil), forCellWithReuseIdentifier: "sliderItemCellID")
        thisWidth = CGFloat(self.frame.width)
            sliderCollection.delegate = self
            sliderCollection.dataSource = self

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sliderImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellSlider = (collectionView.dequeueReusableCell(withReuseIdentifier: "sliderItemCellID", for: indexPath) as? SliderItemCell)!
        cellSlider.sliderImage.image = UIImage(named: sliderImageArray[indexPath.row])
        
        return cellSlider
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
  }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.pageControl.currentPage = indexPath.section
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        thisWidth = CGFloat(self.frame.width)
        return CGSize(width: thisWidth, height: self.frame.height)
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
    
}
