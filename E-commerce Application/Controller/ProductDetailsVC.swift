//
//  ProductDetailsVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 16/11/22.
//

import UIKit

class ProductDetailsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var rectangleViewLikeBtn: UIView!
    @IBOutlet weak var circleViewLikeBtn: UIView!
    @IBOutlet weak var shareBtn: UIButton!
    @IBOutlet weak var reviewView: UIView!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var btnLike: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: SimilarItemCVC.identifier, bundle: nil), forCellWithReuseIdentifier: SimilarItemCVC.identifier)
        
        let layout = UICollectionViewFlowLayout()
        let cellWidth = (UIScreen.main.bounds.width - 230)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.itemSize = CGSize(width: cellWidth, height: 200)
        layout.sectionInset = UIEdgeInsets(top: 5, left: 15, bottom:10, right:15)
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout    
        
        initialSetUp()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SimilarItemCVC.identifier, for: indexPath) as! SimilarItemCVC
        cell.layer.cornerRadius = 8
        return cell
    }
    
    @IBAction func onClickLikeBtn(_ sender: Any) {
        
    }
    
     
    func initialSetUp() {
        rectangleViewLikeBtn.layer.borderWidth = 0.5
        rectangleViewLikeBtn.layer.borderColor = UIColor.black.cgColor
        rectangleViewLikeBtn.clipsToBounds = true
        
        circleViewLikeBtn.layer.cornerRadius = 25
        circleViewLikeBtn.clipsToBounds = true
        
        shareBtn.layer.borderWidth = 0.5
        shareBtn.layer.borderColor = UIColor(named: "darkGreen")?.cgColor
        shareBtn.clipsToBounds = true
        
        reviewView.layer.cornerRadius = 10
        reviewView.clipsToBounds = true
        
        profileImg.layer.cornerRadius = 26
        profileImg.clipsToBounds = true
        
    }

}
