//
//  ProfileVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 14/11/22.
//

import UIKit

class ProfileVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var profileIMG: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    let vcSegue = ["showOrderDetails", "showOrderDetails", "showOrderDetails", "showMyReview", "showSettingVC",]
    
    let pTitle : [String] = ["My orders", "Payment method", "Promocodes", "My reviews", "Setting"]
    
    let pSubTitle : [String] = ["Already have 12 orders", "Visa **34", "You have special promocodes", "Reviews for 4 items", "Nofifications, password"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TabBar
       // self.tabBarController?.tabBar.isHidden = false


        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: ProfileTVC.identifier, bundle: nil), forCellReuseIdentifier: ProfileTVC.identifier)
         
        profileInitialSetUp()
        
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pTitle .count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProfileTVC.identifier, for: indexPath) as! ProfileTVC
      
        cell.lblTitle.text = pTitle[indexPath.row]
        cell.lblSubTitle.text = pSubTitle[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //let vc = vcSegue[indexPath.row].
        performSegue(withIdentifier: vcSegue[indexPath.row], sender: self)
        
    }
    func profileInitialSetUp() {
        tableView.rowHeight = 90.0
        tableView.clipsToBounds = true
        
        profileIMG.layer.cornerRadius = 50
        profileIMG.clipsToBounds = true
        
    }
    
}
