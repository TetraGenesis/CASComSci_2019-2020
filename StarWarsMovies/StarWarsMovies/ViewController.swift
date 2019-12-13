//
//  ViewController.swift
//  StarWarsMovies
//
//  Created by Ezra Barber on 12/12/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var otherInfoLabel: UILabel!
    @IBOutlet weak var searchBar: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressOne(_ sender: UIButton) {
        let query = searchBar.value(forKey: "Enter") ?? "oops"
        let url: URL = URL(string: "https://swapi.co/api/films/?search=\(query)")!
        let responseData: Data = try! Data(contentsOf: url)
        let json: Any = try! JSONSerialization.jsonObject(with: responseData, options: [])
        let dictionary: [String: Any] = json as! [String: Any]
        let name: String = dictionary["title"] as! String
        nameLabel.text = name
    }
    
}
