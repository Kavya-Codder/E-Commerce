//
//  SideMenuTVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 16/11/22.
//

import UIKit

class SideMenuTVC: UITableViewCell {
static let identifier = "SideMenuTVC"
    
    
    @IBOutlet weak var lblText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
