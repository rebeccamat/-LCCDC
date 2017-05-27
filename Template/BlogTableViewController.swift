//
//  EventsTableViewController.swift
//  Template
//
//  Created by rebecca matthews on 5/3/17.
//  Copyright © 2017 StreetCode. All rights reserved.
//

import UIKit

class BlogTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BlogCell", for: indexPath) as! BlogTableViewCell
        if indexPath.row == 0 {
            cell.titleImage.image=UIImage(named:"STREETCODE Class")
            cell.titleLabel.text="Streetcode Class"
        }
        if indexPath.row == 1 {
            cell.titleImage.image=UIImage(named:"Theresa 2")
            cell.titleLabel.text="Feeding the Hungry"
            
        }
        if indexPath.row == 2 {
            cell.titleImage.image=UIImage(named:"B2B")
            cell.titleLabel.text="Back Pack Give-Away B2B"
            
        }
        if indexPath.row == 3 {
            cell.titleImage.image=UIImage(named:"Edwin Hawkins Food Drive")
            cell.titleLabel.text="Food Drive"
            
        }
        if indexPath.row == 4 {
            cell.titleImage.image=UIImage(named:"Dance at B2B")
            cell.titleLabel.text="Dance At B2B"
            
        }
    
        if indexPath.row == 5 {
            cell.titleImage.image=UIImage(named:"Fundraising")
            cell.titleLabel.text="Fundraising"
        }
    
        // Configure the cell...
        

        return cell

}

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "blogPost") as! BlogPostViewController
        let cell=tableView.cellForRow(at: indexPath) as! BlogTableViewCell
        controller.titleText = cell.titleLabel.text!
        controller.titleImage = cell.titleImage.image
        controller.blogText = blogPosts[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
