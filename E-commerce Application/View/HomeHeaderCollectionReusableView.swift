//
//  HomeHeaderCollectionReusableView.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 15/11/22.
//

import UIKit

class HomeHeaderCollectionReusableView: UICollectionReusableView {
static let identifier = "HomeHeaderCollectionReusableView"
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubTitle: UILabel!
    @IBOutlet weak var btnViewAll: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
