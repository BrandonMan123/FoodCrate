//
//  SelectRestaurantTableViewController.swift
//  FoodCrate
//
//  Created by Brandon Man on 12/4/2019.
//  Copyright © 2019 Brandon Man. All rights reserved.
//

import UIKit

class SelectRestaurantTableViewController: UITableViewController {
    var restaurants:[Restaurant] = RestaurantData
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return RestaurantData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell", for: indexPath)

        // Configure the cell...
        let eachRestaurant = RestaurantData[indexPath.row] as Restaurant
        
        cell.textLabel?.text = eachRestaurant.name
        cell.detailTextLabel?.text = eachRestaurant.description
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DestinationViewController = Storyboard.instantiateViewController(withIdentifier: "SelectFoodItemTableViewController") as! SelectFoodItemTableViewController
        
        DestinationViewController.getRestaurant = RestaurantData[indexPath.row]

        self.navigationController?.pushViewController(DestinationViewController, animated: true)
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

    
    // MARK: - Navigation

    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowMenu"{
            
            if let destination = segue.destination as? SelectFoodItemTableViewController{
                print ("Segue destiniation is SelectFoodItemTableViewController")
                
                if let indexPath = tableView.indexPathForSelectedRow?.row{
                    
                    if let objectToPass = RestaurantData[indexPath] as Restaurant?{
                        
                        destination.getRestaurant = objectToPass
                        
                    }
                }
            }
        }
 
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    */
}
