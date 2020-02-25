//
//  ViewController.swift
//  number guessing game
//
//  Created by Ezra Barber on 2/11/20.
//  Copyright © 2020 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstButton: NamedButton!
    @IBOutlet weak var secondButton: NamedButton!
    @IBOutlet weak var thirdButton: NamedButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        firstButton.name = "Avriel Button"
        secondButton.name = "Kevin Button"
        thirdButton.name = "Kirstin Button"
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonPress(_ sender: Any) {
        let message: String
        if let sender = sender as? NamedButton {
            message = "Hello my name is \(sender.name)"
        }
        else {
            message = "Hello I don't know who I am"
        }
        let alert = UIAlertController(title: "Hey", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
}

