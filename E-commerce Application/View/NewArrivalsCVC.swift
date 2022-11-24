//
//  NewArrivalsCVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 16/11/22.
//

import UIKit

class NewArrivalsCVC: UICollectionViewCell {
static let identifier = "NewArrivalsCVC"
    
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
