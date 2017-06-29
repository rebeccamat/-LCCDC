//
//  ProgramTableViewController.swift
//  Template
//
//  Created by Mateo Garcia on 4/4/17.
//  Copyright © 2017 StreetCode. All rights reserved.
//

import UIKit

class ProjectTableViewController: UITableViewController {
    
    var imageFileNames: [String] = ["Project-STEAM","Feeding the Homeless", "ProjectChabot","DOW","MM&SC","Childwriting"]
    var addressText: [String] = ["Pilot S.T.E.A.M. Program","Feeding the Hungry", "Chabot Space and Science Center","DOW-Dignity on Wheels","Mental Health Services","Financial Literacy"]
    
    
    // I need a database to pull my images and videos; when I size the pictures 330 x 200 with 72 pixels and save a png, they seem to fit perfectly overwise the become distorted or will not show up at all --Rebecca.
    
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
        return imageFileNames.count + 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Donate to " + addressText[indexPath.row], message: nil, preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
        }
        let foodAction = UIAlertAction(title: "Food Donation", style: .default) { action in
            print("food tapped")
        }
        let clothesAction = UIAlertAction(title: "Clothes Donation", style: .default) { action in
            print("clothes tapped")
        }
            
        let monetaryAction = UIAlertAction(title: "Monetary Donation", style: .default) { action in
            print("monetary tapped")

        }
            
        alert.addAction(clothesAction)
        alert.addAction(cancelAction)
        alert.addAction(foodAction)
        alert.addAction(monetaryAction)
        self.present(alert, animated: true) {}

    
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    //Breakpoint makes the program stop to see what state the code is in. Debug and take the drag the break points off the screen
    
        if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProjectWebViewCell", for: indexPath) as! ProjectWebViewCell
            cell.loadurl(url: "https://www.youtube.com/watch?v=2IVQGL-kbrA")
            return cell
        }
    
        let cell = tableView.dequeueReusableCell(withIdentifier:"ProjectTableViewCell", for: indexPath) as! ProjectTableViewCell
        cell.photoImageView.image = UIImage(named: imageFileNames[indexPath.row])
        cell.photoImageView.contentMode = .scaleAspectFill
        cell.addressLabel.text = addressText[indexPath.row]
        //This override creates all the cells, each cell has an imagename and identifier.
        
        //The identifier is given to ProjectTableViewCell.

        // Configure the cell...tell the commputer what to put in each cell; indexpath has two numbers, first column has 0 row 0, and second column 1 row 0.   
        
        print(indexPath)
//        let file = imageFileNames[indexPath[1]]
//        cell.imageView = UIImageView(image: UIImage(contentsOfFile: imageFileNames[indexPath[1]]))

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
