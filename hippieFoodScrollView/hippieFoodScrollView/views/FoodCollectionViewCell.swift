//
//  FoodCollectionViewCell.swift
//  hippieFoodScrollView
//
//  Created by Sky Xu on 12/20/17.
//  Copyright © 2017 Sky Xu. All rights reserved.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodOfDayImg: UIImageView!
    @IBOutlet weak var foodOfDayLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
