//
//  ViewController.swift
//  PTX album picker
//
//  Created by Ezra Barber on 10/21/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return albums.count
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }

       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return albums[row]
       }
    
    
    @IBOutlet weak var albumPicker: UIPickerView!
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    let albums = ["Pentatonix", "PTX Vol. II", "PTX Vol. III", "That's Christmas to Me", "PTX Vol. IV - Classics"]
    let prices = ["$4.99", "$4.99", "$5.99", "$4.49", "$6.99"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func orderAlbums(_ sender: Any) {
        let row = albumPicker.selectedRow(inComponent:0)
        resultLabel.text = "You ordered:  \(albums[row]) for \(prices[row])"
    }
    
}

