//
//  FirstPageViewController.swift
//  Template
//
//  Created by rebecca matthews on 5/10/17.
//  Copyright © 2017 StreetCode. All rights reserved.
//

import UIKit

class FirstPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func programButtonTouched(_ sender: Any) {
        tabBarController?.selectedIndex = 3
    }
    
    @IBAction func eventButtonTouched(_ sender: Any) {
        tabBarController?.selectedIndex = 2
    }
    @IBAction func blogButtonTouched(_ sender: Any) {
        tabBarController?.selectedIndex = 1
    }
    @IBAction func donnorsButtonTouched(_ sender: Any) {
        tabBarController?.selectedIndex = 4
        
    }
    
    /*
    // MARK: - Navigation

     }
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
