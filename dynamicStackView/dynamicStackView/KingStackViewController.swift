//
//  KingStackViewController.swift
//  dynamicStackView
//
//  Created by Ezra Barber on 2/6/20.
//  Copyright © 2020 Ezra Barber. All rights reserved.
//

import UIKit

class KingStackViewController: UIViewController {
    
    var labelCount = 5
    @IBOutlet weak var lordStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let labels = (1...labelCount).map({(x) -> UILabel in
            let newLabel = UILabel()
            newLabel.text = "Hello there \(x)"
            return newLabel
        })
        for (x, label) in labels.enumerated() {
            label.textAlignment = .center
            lordStackView.addArrangedSubview(label)
            let constraint = NSLayoutConstraint(item: label, attribute: .height, relatedBy: .equal, toItem: labels[0], attribute: .height, multiplier: 1, constant: 1)
            if x != 0 {
                lordStackView.addConstraint(constraint)
            }
        }
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
