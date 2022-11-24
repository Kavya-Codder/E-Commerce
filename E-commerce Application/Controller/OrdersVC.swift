//
//  OrdersVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 14/11/22.
//

import UIKit

class OrdersVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchView.layer.cornerRadius = 20
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: OrdersCVC.identifier, bundle: nil), forCellWithReuseIdentifier: OrdersCVC.identifier)
        

        let layout = UICollectionViewFlowLayout()
               let cellWidth = (UIScreen.main.bounds.width - 20)
               layout.minimumLineSpacing = 10
               layout.minimumInteritemSpacing = 5
               layout.itemSize = CGSize(width: cellWidth, height: 155)
        layout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom:10, right:10)
               layout.scrollDirection = .vertical
               collectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OrdersCVC.identifier, for: indexPath) as! OrdersCVC
        cell.layer.cornerRadius = 10
        return cell
    }
    

}
