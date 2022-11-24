//
//  MyProfileSettingVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 15/11/22.
//

import UIKit

class MyProfileSettingVC: UIViewController {

    @IBOutlet weak var fullNameView: UIView!
    @IBOutlet weak var dobView: UIView!
    @IBOutlet weak var passwordView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TabBar
        self.tabBarController?.tabBar.isHidden = true

        initialSetUp()
    }
    
    @IBAction func onClickChangeBtn(_ sender: Any) {
        
//        deleteVC.deleate = self
//        deleteVC.index = indexPath.row
        
        let passwordChangeVC = UIStoryboard(name: "Profile", bundle: nil).instantiateViewController(withIdentifier: "PasswordChangeVC") as! PasswordChangeVC
        passwordChangeVC.modalPresentationStyle = .overCurrentContext
        self.present(passwordChangeVC, animated: true, completion: nil)
    }
    
    func initialSetUp() {
        fullNameView.layer.cornerRadius = 5
        fullNameView.clipsToBounds = true
        
        dobView.layer.cornerRadius = 5
        dobView.clipsToBounds = true
        
        passwordView.layer.cornerRadius = 5
        passwordView.clipsToBounds = true
    }

}
