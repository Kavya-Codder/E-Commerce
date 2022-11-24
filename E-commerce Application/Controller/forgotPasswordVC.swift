//
//  forgotPasswordVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 13/11/22.
//

import UIKit

class forgotPasswordVC: UIViewController {

    @IBOutlet weak var emailView: UIView!
    
    @IBOutlet weak var btnSend: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        forgotPasswordInitialSetup()
    }
    
    func forgotPasswordInitialSetup() {
      
        emailView.layer.cornerRadius = 5
        emailView.clipsToBounds = true
        emailView.layer.borderColor = UIColor.red.cgColor
        emailView.layer.borderWidth = 1
        btnSend.layer.cornerRadius = 20
        btnSend.clipsToBounds = true
       
    }
    
}
