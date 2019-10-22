//
//  ViewController.swift
//  birthYearCalculator
//
//  Created by Ezra Barber on 10/21/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputBar: UITextField!
    @IBOutlet weak var calcButton: UIButton!
    @IBOutlet weak var finalLabel: UILabel!
    @IBOutlet weak var birthdaySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: Any) {
        if birthdaySwitch.isOn {
            var age_year = 2019 - (Int(inputBar.text!) ?? 30)
        }
        else {
            var age_year = 2018 - (Int(inputBar.text!) ?? 30)
            finalLabel.text = "You were born in \(age_year)!"
        }
    }
}

