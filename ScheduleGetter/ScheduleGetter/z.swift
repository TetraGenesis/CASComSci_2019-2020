//
//  ViewController.swift
//  ScheduleGetter
//
//  Created by Ezra Barber on 11/1/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var vocabWord:String?
    var vocabDefinition:String?
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "\(vocabWord!)"
        definitionLabel.text = "\(vocabDefinition!)"
        // Do any additional setup after loading the view.
    }
    
}

