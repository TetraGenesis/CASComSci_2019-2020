//
//  DetailsViewController.swift
//  hardCoding
//
//  Created by Ezra Barber on 2/3/20.
//  Copyright © 2020 Ezra Barber. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var detailsTextView: UITextView!
    var characterClicked = ["name": "Mario", "description": "a plumber", "alignment": "good"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsTextView.text = "\(characterClicked["name"] ?? "Somebody") is \(characterClicked["description"] ?? "a mystery"). They are \(characterClicked["alignment"] ?? "okayish, I guess.")."
        
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
