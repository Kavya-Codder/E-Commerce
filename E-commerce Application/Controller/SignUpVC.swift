//
//  SignUpVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 13/11/22.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var mobileView: UIView!
    @IBOutlet weak var addressView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var btnSignup: UIButton!
    @IBOutlet weak var googleView: UIView!
    @IBOutlet weak var facebookView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signupInitialSetup()
       
    }
    
    func signupInitialSetup() {
        nameView.layer.cornerRadius = 5
        nameView.clipsToBounds = true
        emailView.layer.cornerRadius = 5
        emailView.clipsToBounds = true
        mobileView.layer.cornerRadius = 5
        mobileView.clipsToBounds = true
        addressView.layer.cornerRadius = 5
        addressView.clipsToBounds = true
        passwordView.layer.cornerRadius = 5
        passwordView.clipsToBounds = true
        btnSignup.layer.cornerRadius = 20
        btnSignup.clipsToBounds = true
        googleView.layer.cornerRadius = 20
        googleView.clipsToBounds = true
        facebookView.layer.cornerRadius = 20
        facebookView.clipsToBounds = true
    }

}
