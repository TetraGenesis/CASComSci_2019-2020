//
//  ViewController.swift
//  Star Wars API
//
//  Created by Ezra Barber on 12/23/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    func main() {
        let query = searchBar.value(forKey: "Enter")
        let url: URL = URL(string: "https://swapi.co/api/films/?search=\(query ?? "Luke")")!
        let responseData: Data = try! Data(contentsOf: url)
        let json: Any = try! JSONSerialization.jsonObject(with: responseData, options: [])
        let dictionary: [String: Any] = json as! [String: Any]
        let name: String = dictionary["name"] as! String
        let species: String = dictionary["species"] as! String
        nameLabel.text = name
        speciesLabel.text = species
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
}

