//
//  FavouriteTBC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 14/11/22.
//

import UIKit

class FavouriteTBC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: FavouriteCVC.identifier, bundle: nil), forCellWithReuseIdentifier: FavouriteCVC.identifier)
        
        let layout = UICollectionViewFlowLayout()
               let cellWidth = (UIScreen.main.bounds.width - 30)
               layout.minimumLineSpacing = 15
               layout.minimumInteritemSpacing = 5
               layout.itemSize = CGSize(width: cellWidth, height: 105)
        layout.sectionInset = UIEdgeInsets(top: 5, left: 15, bottom:10, right:15)
               layout.scrollDirection = .vertical
               collectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FavouriteCVC.identifier, for: indexPath) as! FavouriteCVC
        cell.layer.cornerRadius = 10
        return cell
    }
    

}
