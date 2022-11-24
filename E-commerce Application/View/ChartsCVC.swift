//
//  ChartsCVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 14/11/22.
//

import UIKit

class ChartsCVC: UICollectionViewCell {
    static let identifer = "ChartsCVC"

    @IBOutlet weak var productImg: UIImageView!
    
    @IBOutlet weak var favouriteView: UIView!
    
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
