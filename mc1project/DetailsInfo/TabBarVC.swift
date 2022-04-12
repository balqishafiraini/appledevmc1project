//
//  TabBarVC.swift
//  mc1project
//
//  Created by Vendly on 12/04/22.
//

import UIKit

class TabBarVC: UITabBar {
    
    override func draw(_ rect: CGRect) {
        self.unselectedItemTintColor = UIColor.white
        self.tintColor = UIColor.systemMint
    }

}
