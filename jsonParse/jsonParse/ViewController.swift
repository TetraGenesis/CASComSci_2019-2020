//
//  ViewController.swift
//  jsonParse
//
//  Created by Ezra Barber on 12/4/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fileUrl = Bundle.main.url(forResource: "data", withExtension: "json")!
        let fileContents = try! Data(contentsOf: fileUrl)

         func main() {
            let json = try? JSONSerialization.jsonObject(with: fileContents, options: [])
            let dictionary = json as! [String: Any]
            let name = dictionary["name"] as! String
            let hobbies = dictionary["hobbies"] as! [String]
            let age = dictionary["age"] as! Int
            print("Hello, my name is \(name). I am \(age) years old. My hobbies include \(hobbies.joined(separator: ",\n ")).")
            nameLabel.text = "Name: " + name
            ageLabel.text = "Age: " + String(age) + " years old"
            hobbyLabel.text = "Hobbies: \n" +  hobbies.joined(separator: ", \n")
         }

         main()

        
        // Do any additional setup after loading the view.
    }
    
    


}

