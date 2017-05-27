//
//  BlogPostViewController.swift
//  Template
//
//  Created by rebecca matthews on 5/27/17.
//  Copyright © 2017 StreetCode. All rights reserved.
//

import UIKit

class BlogPostViewController: UIViewController {
    
    var blogText: String = ""
    var titleText: String = ""
    var titleImage: UIImage? = nil

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var blogTextView: UITextView!
    @IBOutlet weak var blogImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        blogTextView.text = blogText
        titleLabel.text = titleText
        blogImageView.image = titleImage
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
