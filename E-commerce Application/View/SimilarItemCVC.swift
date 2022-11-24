//
//  SimilarItemCVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 16/11/22.
//

import UIKit

class SimilarItemCVC: UICollectionViewCell {
static let identifier = "SimilarItemCVC"
    
    @IBOutlet weak var productImg: UIImageView!
    
    @IBOutlet weak var lblPName: UILabel!
    
    @IBOutlet weak var lblPPrice: UILabel!
    
    @IBOutlet weak var newView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        newView.layer.cornerRadius = 10
    }

    
}
