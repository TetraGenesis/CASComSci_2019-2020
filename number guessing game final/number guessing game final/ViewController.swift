//
//  ViewController.swift
//  number guessing game final
//
//  Created by Ezra Barber on 2/12/20.
//  Copyright © 2020 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var smallButton: NamedButton!
    @IBOutlet weak var mediumButton: NamedButton!
    @IBOutlet weak var largeButton: NamedButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        smallButton.level = 10
        mediumButton.level = 30
        largeButton.level = 50
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction @objc func buttonLister(_ sender: NamedButton) {
        for i in 1...sender.level {
            let newButton = UIButton()
            newButton.setTitle("Button \(i)", for: .normal)
            
        }
        
    }
    
    


}

