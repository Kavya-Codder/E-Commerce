//
//  SearchScreenVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 14/11/22.
//

import UIKit

class SearchScreenVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var searchView: UIView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: SearchScreenCVC.identifier, bundle: nil), forCellWithReuseIdentifier: SearchScreenCVC.identifier)
        
        let layout = UICollectionViewFlowLayout()
        let cellWidth = (UIScreen.main.bounds.width-60)/2
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 20
        layout.itemSize = CGSize(width: cellWidth, height: 165)
        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom:10, right:20)
        layout.scrollDirection = .vertical
        collectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchScreenCVC.identifier, for: indexPath) as! SearchScreenCVC
        cell.layer.shadowOpacity = 4.0
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.cornerRadius = 5
        return cell
    }
    

}
