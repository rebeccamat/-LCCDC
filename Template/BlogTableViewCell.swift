//
//  BlogTableViewCell.swift
//  Template
//
//  Created by rebecca matthews on 5/24/17.
//  Copyright © 2017 StreetCode. All rights reserved.
//

import UIKit

class BlogTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var titleImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
