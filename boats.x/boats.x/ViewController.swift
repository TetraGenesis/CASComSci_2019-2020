//
//  ViewController.swift
//  boats.x
//
//  Created by Ezra Barber on 11/8/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dolphinLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    var boat: Boat?
    override func viewDidLoad() {
        super.viewDidLoad()
        dolphinLabel.text = "Dolphin power: \n" + String(boat!.dolphinPower)
        sizeLabel.text = "Size: \n" + boat!.size
        colorLabel.text = "Color: \n" + boat!.color
        // Do any additional setup after loading the view.
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
