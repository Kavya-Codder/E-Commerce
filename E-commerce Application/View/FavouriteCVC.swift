//
//  FavouriteCVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 14/11/22.
//

import UIKit

class FavouriteCVC: UICollectionViewCell {
static let identifier = "FavouriteCVC"
    
    @IBOutlet weak var favouriteView: UIView!
    @IBOutlet weak var productImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        cellSetUP()
    }
    func cellSetUP () {
        productImg.layer.cornerRadius = 5
        productImg.clipsToBounds = true
        productImg.layer.borderWidth = 1.0
        productImg.layer.borderColor = UIColor(named: "appBGColour")?.cgColor
        
        favouriteView.layer.cornerRadius = 20
        favouriteView.clipsToBounds = true
    }

}
