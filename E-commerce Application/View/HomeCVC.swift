//
//  HomeCVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 13/11/22.
//

import UIKit

class HomeCVC: UICollectionViewCell {

    static let identifier = "HomeCVC"
    
    @IBOutlet weak var productImg: UIImageView!
    
    @IBOutlet weak var nameTxt: UILabel!
    
    @IBOutlet weak var priceTxt: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
