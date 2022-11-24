//
//  HomeVC.swift
//  E-commerce Application
//
//  Created by Sunil Developer on 13/11/22.
//

import UIKit

class HomeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var newArrivalsCollectionView: UICollectionView!
    
    @IBOutlet weak var trendingCollectionView: UICollectionView!
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    
    let collectionViewCell = "HomeCVC"
    let newArrivalsCollectionViewCell = "NewArrivalsCVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: HomeCVC.identifier, bundle: nil), forCellWithReuseIdentifier: HomeCVC.identifier)
        
        
        newArrivalsCollectionView.delegate = self
        newArrivalsCollectionView.dataSource = self
        newArrivalsCollectionView.register(UINib(nibName: NewArrivalsCVC.identifier, bundle: nil), forCellWithReuseIdentifier: NewArrivalsCVC.identifier)
        
        trendingCollectionView.delegate = self
        trendingCollectionView.dataSource = self
        trendingCollectionView.register(UINib(nibName: TrendingCVC.identifier, bundle: nil), forCellWithReuseIdentifier: TrendingCVC.identifier)
        
        let layout1 = UICollectionViewFlowLayout()
        let cellWidth1 = (UIScreen.main.bounds.width - 250)
        layout1.minimumLineSpacing = 15
        layout1.minimumInteritemSpacing = 5
        layout1.itemSize = CGSize(width: cellWidth1, height: 170)
        layout1.sectionInset = UIEdgeInsets(top: 5, left: 3, bottom: 5, right:15)
        layout1.scrollDirection = .horizontal
        
        collectionView.collectionViewLayout = layout1
        
        
        //NewArrival Collection View
        
        let layout2 = UICollectionViewFlowLayout()
        let cellWidth2 = (UIScreen.main.bounds.width - 250)
        layout2.minimumLineSpacing = 15
        layout2.minimumInteritemSpacing = 5
        layout2.itemSize = CGSize(width: cellWidth2, height: 200)
        layout2.sectionInset = UIEdgeInsets(top: 5, left: 3, bottom: 5, right:15)
        layout2.scrollDirection = .horizontal

        trendingCollectionView.collectionViewLayout = layout2
        newArrivalsCollectionView.collectionViewLayout = layout2
    }
    
    
    @IBAction func onClickSearchBtn(_ sender: Any) {
        let productDetailsVC = UIStoryboard(name: "HomeScreen", bundle: nil).instantiateViewController(withIdentifier: "ProductDetailsVC") as! ProductDetailsVC
        navigationController?.pushViewController(productDetailsVC, animated: true)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView {
            return 15
        } else if collectionView == self.newArrivalsCollectionView {
            return 15
        } else if collectionView == self.trendingCollectionView {
            return 15
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView {
            let cell1 = self.collectionView.dequeueReusableCell(withReuseIdentifier: HomeCVC.identifier, for: indexPath) as! HomeCVC
            cell1.layer.cornerRadius = 8
            return cell1
        } else if collectionView == self.newArrivalsCollectionView {
            let cell2 = self.newArrivalsCollectionView.dequeueReusableCell(withReuseIdentifier: NewArrivalsCVC.identifier, for: indexPath) as! NewArrivalsCVC
            cell2.layer.cornerRadius = 8
            return cell2
        } else if collectionView == self.trendingCollectionView {
            let cell2 = self.trendingCollectionView.dequeueReusableCell(withReuseIdentifier: TrendingCVC.identifier, for: indexPath) as! TrendingCVC
            cell2.layer.cornerRadius = 8
            return cell2
        }
        return UICollectionViewCell()
    }
    
}

