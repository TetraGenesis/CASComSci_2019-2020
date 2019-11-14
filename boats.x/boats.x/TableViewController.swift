//
//  TableViewController.swift
//  boats.x
//
//  Created by Ezra Barber on 11/8/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
//    let boats:[String:String] = [
//        "SS Tipton cruise ship":"white big enough for zack and cody 3 woodys",
//        "SS Submarine":"Invisible Nuclear Powerful",
//        "Cruise Boat":"white large mind-reading",
//        "Alligator Boat":"Alligator Color Alligator Size At least 13",
//        "SS Askinum": "pink humongous Ultimate Energy",
//        "SS Malin":"white really small 1/8"
//    ]
    
    let boats:[Boat] = [
        Boat(n: "SS Tipton cruise ship", dp: 4, c: "white", s: "big enough for Zack and Cody"),
        Boat(n: "SS Submarine", dp: 420, c: "nuclear", s: "powerful"),
        Boat(n: "Cruise Boat", dp: 666, c: "white", s: "large"),
        Boat(n: "Alligator Boat", dp: 13, c: "Alligator", s: "Alligator Size"),
        Boat(n: "SS Askinum", dp: 9000, c: "pink", s: "humongous"),
        Boat(n: "SS Malin", dp: 27000, c: "white", s: "really small")
    ]

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

        return boats.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "water", for: indexPath)
        let title = boats[indexPath.row].name
        cell.textLabel?.text = title
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! ViewController
        let indexPath = self.tableView.indexPathForSelectedRow
        let boat = self.boats[indexPath!.row]
        vc.boat = boat
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}


class Boat {
    var name:String
    var dolphinPower:Int
    var color:String
    var size:String
    init(n:String, dp:Int, c:String, s:String) {
        name = n
        dolphinPower = dp
        color = c
        size = s
    }
}
