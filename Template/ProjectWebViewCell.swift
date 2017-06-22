//
//  ProjectWebViewCell.swift
//  Template
//
//  Created by rebecca matthews on 5/31/17.
//  Copyright © 2017 StreetCode. All rights reserved.
//

import UIKit

class ProjectWebViewCell: UITableViewCell {
    
    @IBOutlet weak var webView: UIWebView!

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    func loadurl(url: String) {
        let YouTubeurl = URL(string: url)
        webView.loadRequest(URLRequest(url: YouTubeurl!))
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
