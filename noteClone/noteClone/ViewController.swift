//
//  ViewController.swift
//  noteClone
//
//  Created by Ezra Barber on 11/14/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var note:Note?
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = note?.text
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        note?.text = textView.text
    }


}

