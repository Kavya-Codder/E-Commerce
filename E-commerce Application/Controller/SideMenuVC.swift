//
//  SideMenuVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 16/11/22.
//

import UIKit

class SideMenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var containerView: UIView!
    let data = ["Carat Weight 1", "Carat Weight 2", "Carat Weight 3", "Carat Weight 4", "Carat Weight 5", "Carat Weight 6", "Contact Us", "Log Out",]
    
    var viewOpen:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.containerView.isHidden = true
        viewOpen = false

        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: SideMenuTVC.identifier, bundle: nil), forCellReuseIdentifier: SideMenuTVC.identifier)
    }
    
    @IBAction func btnSideMenu(_ sender: Any) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SideMenuTVC.identifier, for: indexPath) as! SideMenuTVC
        
        cell.lblText.text = data[indexPath.row]
        return cell
    }
    
    


}
