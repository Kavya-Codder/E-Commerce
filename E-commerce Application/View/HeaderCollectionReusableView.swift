//
//  HeaderCollectionReusableView.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 13/11/22.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
static let identifier = "HeaderCollectionReusableView"
    
    @IBOutlet weak var lblHeading: UILabel!
    
    @IBOutlet weak var lblSubheading: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
