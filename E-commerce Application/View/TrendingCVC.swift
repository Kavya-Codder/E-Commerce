//
//  TrendingCVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 16/11/22.
//

import UIKit

class TrendingCVC: UICollectionViewCell {
static let identifier = "TrendingCVC"
    
    @IBOutlet weak var newView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        initialSetUp()
    }
    func initialSetUp() {
        newView.layer.cornerRadius = 15
        newView.clipsToBounds = true
    }

}
