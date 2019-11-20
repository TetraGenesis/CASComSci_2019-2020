//
//  TableViewController.swift
//  noteClone
//
//  Created by Ezra Barber on 11/14/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var notes:[Note] = [Note]()

    @IBOutlet weak var titleBar: UINavigationItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let n1 = Note()
        n1.text = "New Note"
        notes.append(n1)
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return notes.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newnote", for: indexPath)
        let row = indexPath.row
        cell.textLabel!.text = notes[row].text
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

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            notes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
            tableView.reloadData()
            // Delete the row from the data source
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
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
        let dest = segue.destination as! ViewController
        if let index = self.tableView.indexPathForSelectedRow {
            let note = notes[index.row]
            dest.note = note
        }
        else {
            let note = Note()
            notes.append(note)
            dest.note = note
    }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }


}
