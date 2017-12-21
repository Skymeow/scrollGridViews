//
//  ViewController.swift
//  hippieFoodScrollView
//
//  Created by Sky Xu on 12/20/17.
//  Copyright © 2017 Sky Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var foodDayLabelData = ["Tumeric", "Sushi Burrito", "Zonic"]
    var cureLabelData = ["Fight Fatigue", "Reduce Migraines", "Fight Cramps"]
    var foodImgData: [String]?
    let dataSource1 = CollectionViewDataSource(items: [])
    let dataSource2 = CollectionViewDataSource(items: [])
    
    @IBOutlet weak var foodCollectionView: UICollectionView!
    @IBOutlet weak var cureCollectionView: UICollectionView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLayoutSubviews() {
        let scrollBounds = self.scrollView.bounds
        let contentBounds = self.contentView.bounds
        var scrollViewInsets = UIEdgeInsets.zero
        scrollViewInsets.top = scrollBounds.size.height
        scrollViewInsets.top -= contentBounds.size.height
        scrollViewInsets.bottom = scrollBounds.size.height
        scrollViewInsets.bottom -= contentBounds.size.height
        scrollViewInsets.bottom += 1
        
        scrollView.contentInset = scrollViewInsets
    }
    
    override func viewWillAppear(_ animated: Bool) {
        DispatchQueue.main.async {
            self.dataSource1.items = self.foodDayLabelData
            self.foodCollectionView.dataSource = self.dataSource1
            self.foodCollectionView.reloadData()
            
            self.dataSource2.items = self.cureLabelData
            self.cureCollectionView.dataSource = self.dataSource2
            self.cureCollectionView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        foodCollectionView.delegate = self
        let foodCell = UINib(nibName: "FoodCollectionViewCell", bundle: Bundle.main)
        foodCollectionView.register(foodCell, forCellWithReuseIdentifier: "foodCell")
        dataSource1.configureCell = {(foodCollectionView, indexPath) -> UICollectionViewCell in
            let cell = foodCollectionView.dequeueReusableCell(withReuseIdentifier: "foodCell", for: indexPath) as! FoodCollectionViewCell
            cell.foodNameLabel.text = self.foodDayLabelData[indexPath.row]
            cell.foodNameLabel.adjustsFontSizeToFitWidth = true
        
            return cell
        }
        
        cureCollectionView.delegate = self
        let cureCell = UINib(nibName: "CureCollectionViewCell", bundle: Bundle.main)
        cureCollectionView.register(cureCell, forCellWithReuseIdentifier: "cureCell")
        dataSource2.configureCell = {(CureCollectionView, indexPath) -> UICollectionViewCell in
            let cell = self.cureCollectionView.dequeueReusableCell(withReuseIdentifier: "cureCell", for: indexPath) as! CureCollectionViewCell
            cell.diseaseName.text = self.cureLabelData[indexPath.row]
            cell.diseaseName.adjustsFontSizeToFitWidth = true
            
            return cell
        }
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = self.foodCollectionView.bounds.size.height
        return CGSize(width: 320, height: height)
    }
}

