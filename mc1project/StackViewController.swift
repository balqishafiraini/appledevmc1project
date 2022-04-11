//
//  StackViewController.swift
//  mc1project
//
//  Created by Vendly on 11/04/22.
//

import UIKit

class StackViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var aboutLbl: UILabel!
    @IBOutlet weak var opHourLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var mapImg: UIImageView!
    
//    var mapImage = "bali2"
    var destinationTxt = "Amed Beach in Bali is most likely already on your travel itinerary if you're a keen diver. The island’s eastern shoreline is an underwater playground, with Amed Beach attracting the larger crowd of divers."
    var operatingHourTxt = "08.00 - 17.00"
    var priceTxt = "Rp 20.000,-"
    var locationTxt = "Amed beach, Bali"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDetail()
    }

    func initDetail() {
        aboutLbl.text = destinationTxt
        opHourLbl.text = operatingHourTxt
        priceLbl.text = priceTxt
        locationLbl.text = locationTxt
//        mapImg.image = UIImage(named: mapImage)
    }
    
}
