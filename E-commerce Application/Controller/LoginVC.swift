//
//  LoginVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 13/11/22.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailView: UIView!
    
    @IBOutlet weak var passwordView: UIView!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var googleView: UIView!
    
    @IBOutlet weak var facebookView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginInitialSetup()
        
    }
    
    func loginInitialSetup() {
       
        emailView.layer.cornerRadius = 5
        emailView.clipsToBounds = true
        passwordView.layer.cornerRadius = 5
        passwordView.clipsToBounds = true
        googleView.layer.cornerRadius = 20
        googleView.clipsToBounds = true
        facebookView.layer.cornerRadius = 20
        facebookView.clipsToBounds = true
        btnLogin.layer.cornerRadius = 20
        btnLogin.clipsToBounds = true
    }


}
