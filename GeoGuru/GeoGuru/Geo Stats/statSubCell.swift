//
//  statSubCell.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 5/24/19.
//  Copyright © 2019 GeoGuru. All rights reserved.
//

import UIKit

class statSubCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet var factStatement: UILabel!
    @IBOutlet var factDescription: UILabel!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
