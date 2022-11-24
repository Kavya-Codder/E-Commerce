//
//  PasswordChangeVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 15/11/22.
//

import UIKit

class PasswordChangeVC: UIViewController {

    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var oldPasswordView: UIView!
    @IBOutlet weak var newPasswordView: UIView!
    @IBOutlet weak var repeatNPView: UIView!
    @IBOutlet weak var saveBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TabBar
        self.tabBarController?.tabBar.isHidden = true

        initialSetUp()
    }
    
    func initialSetUp() {
        oldPasswordView.layer.cornerRadius = 5
        oldPasswordView.clipsToBounds = true
        
        newPasswordView.layer.cornerRadius = 5
        newPasswordView.clipsToBounds = true
        
        repeatNPView.layer.cornerRadius = 5
        repeatNPView.clipsToBounds = true
        
        saveBtn.layer.cornerRadius = 5
        saveBtn.clipsToBounds = true
        
        viewContainer.layer.cornerRadius = 40
        viewContainer.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
        viewContainer.clipsToBounds = true
        
    }

}
