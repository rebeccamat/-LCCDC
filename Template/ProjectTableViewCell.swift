//
//  ProjectTableViewCell.swift
//  Template
//
//  Created by Mateo Garcia on 4/4/17.
//  Copyright © 2017 StreetCode. All rights reserved.
//

import UIKit

class ProjectTableViewCell: UITableViewCell {

    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var addressLabel: UILabel!
    
    //whenever you create a new custom cell you have to give it a filename and identifier
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
