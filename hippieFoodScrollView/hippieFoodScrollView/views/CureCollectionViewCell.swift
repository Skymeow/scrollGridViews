//
//  CureCollectionViewCell.swift
//  hippieFoodScrollView
//
//  Created by Sky Xu on 12/21/17.
//  Copyright © 2017 Sky Xu. All rights reserved.
//

import UIKit

class CureCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cureImg: UIImageView!
    @IBOutlet weak var causeContext: UILabel!
    @IBOutlet weak var diseaseName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
