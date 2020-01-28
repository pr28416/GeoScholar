//
//  categoryCell.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 3/2/19.
//  Copyright © 2019 GeoGuru. All rights reserved.
//

import UIKit

class categoryCell: UITableViewCell {
    
    @IBOutlet var backBlur: UIVisualEffectView!
    @IBOutlet var backImage: UIImageView!
    @IBOutlet var categoryName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
