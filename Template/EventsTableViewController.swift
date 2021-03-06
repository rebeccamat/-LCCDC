//
//  WhatsNewTableViewController.swift
//  Template
//
//  Created by rebecca matthews on 5/3/17.
//  Copyright © 2017 StreetCode. All rights reserved.
//

import UIKit

class EventsTableViewController: UITableViewController {

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventsCell", for: indexPath) as! EventsTableViewCell
        
        cell.viewController = self
        
        if(indexPath.row==0){
            cell.titleLabel.text = "Visit to FaceBook"
            //cell.whereLabel.text = "FB Campus"
            cell.whenLabel.text = "Tuesday, November 20, 2017 "
            cell.timeLabel.text = "12 Noon to 4:00 PM "
            cell.eventImage.image = UIImage(named:"Facebook logo")
            cell.date = NSDate(timeIntervalSince1970: 1511208000)
        }
        if(indexPath.row==1){
            cell.titleLabel.text = "Feeding the Homeless"
            //cell.whereLabel.text = "Love Center Church"
            cell.whenLabel.text = "Saturday, September 20, 2017 "
            cell.timeLabel.text = "12 Noon to 4:00 PM "
            cell.eventImage.image = UIImage(named: "EdwinHawkinsFoodDrive")
        }
        if(indexPath.row==2){
            cell.titleLabel.text = "Hot Meals for Hungry People"
            //cell.whereLabel.text = "Love Center Church"
            cell.whenLabel.text = "Saturday, June 1, 2017 "
            cell.timeLabel.text = "4 Noon to 6:00 PM "
            cell.eventImage.image = UIImage(named: "balancedmeal")
        }
        if(indexPath.row==3){
            cell.titleLabel.text = "Back Pack Give-A=Way"
            //cell.whereLabel.text = "Love Center Church"
            cell.whenLabel.text = "Saturday, August 1, 2017 "
            cell.timeLabel.text = "11:00 to 5:00 PM "
            cell.eventImage.image = UIImage(named: "B2B")
        }
        if(indexPath.row==4){
            cell.titleLabel.text = "Thanksgiving Food Give-A-Way"
            //cell.whereLabel.text = "Love Center Church"
            cell.whenLabel.text = "Saturday, November 20, 2017 "
            cell.timeLabel.text = "11:00 to 3:00 PM "
            cell.eventImage.image = UIImage(named: "Theresa Taliaferro")
        }

        if(indexPath.row==5){
        cell.titleLabel.text = "Christmas Toys for Tots"
        //cell.whereLabel.text = "Love Center Church"
        cell.whenLabel.text = "Saturday, December 21, 2017 "
        cell.timeLabel.text = "11:00 to 5:00 PM "
        cell.eventImage.image = UIImage(named: "Toys4Tots")
        }

        // Configure the cell...

        return cell
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
