//
//  CustomTableViewCell.swift
//  swift_lab22
//
//  Created by Mohamed Toba on 1/9/22.
//  Copyright © 2022 Mohamed Toba. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var rightLabel: UILabel!
    
    @IBOutlet weak var leftLabel: UILabel!
    
    @IBOutlet weak var customImage: UIImageView!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
