import UIKit

class TableViewController: UITableViewController {
    
    var notes:[Note] = [Note]()
    func getFileURL() -> URL? {
        let docDirectory = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        if docDirectory != nil {
            return docDirectory!.appendingPathComponent("savefile.json")
        }
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = getFileURL() {
            let data = try? Data(contentsOf: url)
            if let data = data {
                let loadedNotes = try! JSONSerialization.jsonObject(with: data, options: []) as! [Note]
            }
        }
        
        // MARK: - Table view data source
        
        func saveApp(_ sender: Any) {
            let data: [String:String] = [
                
            ]
            let url = getFileURL()
            if let jsonData = try? JSONSerialization.data(withJSONObject: data, options: []) {
                try! jsonData.write(to: url!)
            } else {
                print("Saving Failed. :(")
            }
        }
        
        func loadApp(_ sender: Any) {
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return notes.count
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
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
        func viewWillDisappear(_ animated: Bool) {
            tableView.saveApp()
        }
        
     }
}

