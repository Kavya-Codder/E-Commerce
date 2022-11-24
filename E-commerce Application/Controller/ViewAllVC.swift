//
//  ViewAllVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 13/11/22.
//

import UIKit

class ViewAllVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "ViewAllCVC" , bundle: nil), forCellWithReuseIdentifier: "ViewAllCVC")
        
        let layout = UICollectionViewFlowLayout()
        let cellWidth = (UIScreen.main.bounds.width-60)/2
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 20
        layout.itemSize = CGSize(width: cellWidth, height: 165)
        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom:10, right:20)
        layout.scrollDirection = .vertical
        collectionView.collectionViewLayout = layout
        
    }
    
    @IBAction func onClickSearchBtn(_ sender: Any) {
        let searchVC = UIStoryboard(name: "Carts", bundle: nil).instantiateViewController(withIdentifier: "SearchScreenVC") as! SearchScreenVC
        navigationController?.pushViewController(searchVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ViewAllCVC.identifier , for: indexPath) as! ViewAllCVC
        cell.layer.shadowOpacity = 5.0
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.cornerRadius = 5
        return cell
    }
    



}
