//
//  OrdersCVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 14/11/22.
//

import UIKit

class OrdersCVC: UICollectionViewCell {
static let identifier = "OrdersCVC"
    
    @IBOutlet weak var orderImg: UIImageView!
    
    @IBOutlet weak var txtOrderNo: UILabel!
    
    @IBOutlet weak var btnDetails: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        cellSetUp()
    }
    
    func cellSetUp () {
        orderImg.layer.cornerRadius = 5
        orderImg.layer.shadowOpacity = 2
        orderImg.layer.shadowColor = UIColor.red.cgColor
        orderImg.layer.shadowOffset = CGSize.zero
        orderImg.layer.shadowRadius = 10
        orderImg.layer.shadowPath = UIBezierPath(rect: orderImg.bounds).cgPath
        orderImg.layer.shouldRasterize = (10 != 0)
        orderImg.clipsToBounds = true
        
        btnDetails.layer.cornerRadius = 17
        btnDetails.layer.borderWidth = 1.0
        btnDetails.layer.borderColor = UIColor.black.cgColor
        btnDetails.clipsToBounds = true
    }

}
