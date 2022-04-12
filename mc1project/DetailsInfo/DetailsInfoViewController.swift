//
//  DetailsInfoViewController.swift
//  mc1project
//
//  Created by Balqis on 06/04/22.
//

import UIKit

class DetailsInfoViewController: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var destImgView: UIImageView!
    @IBOutlet weak var tabView: UIView!
    @IBOutlet weak var aboutTxtView: UITextView!
    @IBOutlet weak var opHourLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var locLbl: UILabel!
    @IBOutlet weak var contentView: UIView!
    
    var detail: DetailModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customTabView()
        initDetail()
    }
    
    func initDetail() {
        destImgView.image = UIImage(named: detail?.detailImage ?? "")
        aboutTxtView.text = detail?.desc
        opHourLbl.text = detail?.open_hour
        priceLbl.text = detail?.price
        locLbl.text = detail?.location
    }
    
    func customTabView(){
        tabView.layer.cornerRadius = 15
        tabView.clipsToBounds = true
        tabView.layer.masksToBounds = false
        
        tabView.layer.shadowColor = UIColor.gray.cgColor
        tabView.layer.shadowOpacity = 1
        tabView.layer.shadowOffset = CGSize(width: 0, height: 2)
        tabView.layer.shadowRadius = 3

        tabView.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0,
                                                             y: tabView.bounds.maxY - tabView.layer.shadowRadius,
                                                             width: tabView.bounds.width,
                                                             height: tabView.layer.shadowRadius)).cgPath
        tabView.layer.shouldRasterize = true
        tabView.layer.rasterizationScale = UIScreen.main.scale
        
    }

    @IBAction func onClickTabBar(_ sender: UIButton) {
        let tag = sender.tag
                
        if tag == 1 {
            guard let detailInfo = self.storyboard?.instantiateViewController(withIdentifier:
                                "detailsInfoID") as? DetailsInfoViewController else {return}
            contentView.addSubview(detailInfo.view)
            detailInfo.didMove(toParent: self)
        } else {
            self.performSegue(withIdentifier: "detailPhotoID", sender: sender)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailPhotoID" {
            if let imageDetail = segue.destination as? DetailsPhotoViewController {
                imageDetail.detailPhotoArr = detail?.image
            }
        }
    }
    
}
