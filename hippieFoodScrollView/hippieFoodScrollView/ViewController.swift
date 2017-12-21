//
//  ViewController.swift
//  hippieFoodScrollView
//
//  Created by Sky Xu on 12/20/17.
//  Copyright © 2017 Sky Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FoodCollectionView: UICollectionView!
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

