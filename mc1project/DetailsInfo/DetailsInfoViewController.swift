//
//  DetailsInfoViewController.swift
//  mc1project
//
//  Created by Balqis on 06/04/22.
//

import UIKit

class DetailsInfoViewController: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var destImgView: UIImageView!
    @IBOutlet weak var tabView: UIView!
    @IBOutlet weak var aboutTxtView: UITextView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var opHourTxtView: UITextView!
    @IBOutlet weak var priceTxtView: UITextView!
    @IBOutlet weak var locationTxtView: UITextView!
    
    
    var detail: DetailModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customTabView()
        initDetail()
    }
    
    func initDetail() {
        titleLbl.text = detail?.detailName
        destImgView.image = UIImage(named: detail?.detailImage ?? "")
        aboutTxtView.text = detail?.desc
        opHourTxtView.text = detail?.open_hour
        priceTxtView.text = detail?.price
        locationTxtView.text = detail?.location
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
                
        if tag == 2 {
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
