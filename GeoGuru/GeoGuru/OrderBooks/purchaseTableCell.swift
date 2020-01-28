//
//  purchaseTableCell.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 3/6/19.
//  Copyright © 2019 GeoGuru. All rights reserved.
//

import UIKit

class purchaseTableCell: UITableViewCell {

    @IBOutlet var purchaseName: UILabel!
    @IBOutlet var localizedPrice: UILabel!
    @IBOutlet var backImage: UIImageView!
    @IBOutlet var numQuestions: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
