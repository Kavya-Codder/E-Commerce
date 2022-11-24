//
//  WriteReviewVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 14/11/22.
//

import UIKit

class WriteReviewVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var reviewContainer: UIView!
    @IBOutlet weak var btnSendReview: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TabBar
        self.tabBarController?.tabBar.isHidden = true
        
        initialSetUp()

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: WriteReviewCVC.identifer, bundle: nil), forCellWithReuseIdentifier: WriteReviewCVC.identifer)
        
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WriteReviewCVC.identifer, for: indexPath) as! WriteReviewCVC
        cell.layer.cornerRadius = 10
        return cell
    }
    func initialSetUp() {
        reviewContainer.clipsToBounds = true
        reviewContainer.layer.cornerRadius = 40
        reviewContainer.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
        btnSendReview.layer.cornerRadius = 20
        btnSendReview.clipsToBounds = true
    }
    
}
