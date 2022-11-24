//
//  AllReviewVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 14/11/22.
//

import UIKit

class AllReviewVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TabBar
        self.tabBarController?.tabBar.isHidden = true

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: AllReviewCVC.identifier, bundle: nil), forCellWithReuseIdentifier: AllReviewCVC.identifier)
        
        let layout = UICollectionViewFlowLayout()
        let cellWidth = (UIScreen.main.bounds.width - 30)
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 5
        layout.itemSize = CGSize(width: cellWidth, height: 230)
        layout.sectionInset = UIEdgeInsets(top: 5, left: 15, bottom:10, right:15)
        layout.scrollDirection = .vertical
        collectionView.collectionViewLayout = layout    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AllReviewCVC.identifier, for: indexPath) as! AllReviewCVC
        cell.layer.cornerRadius = 10
        return cell
    }
    
}
