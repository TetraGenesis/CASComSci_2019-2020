//
//  ViewController.swift
//  TrialLabelApp
//
//  Created by Ezra Barber on 9/19/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var launchLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countingButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        launchLabel.text = "   Hello there"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func countPresses(_ sender:UIButton) {
        counter += 1
        countLabel.text = "The button has been pressed \(counter) times."
    }
    @IBAction func reset(_ sender:UIButton) {
        counter = 0
        countLabel.text = "The button has been pressed \(counter) times."
    }


}

