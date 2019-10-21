//
//  ViewController.swift
//  Pizza Picker
//
//  Created by Ezra Barber on 10/16/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pizzaFlavors.count
    }
    
    @IBOutlet weak var pizzaPicker: UIPickerView!
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var pizzaLabel: UILabel!
    
    let pizzaFlavors = ["Hawaiian", "Meat Lovers", "Veggie", "Pepperoni", "Mushroom", "Cheese"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> String? {
           return String(pizzaFlavors.count)
       }
    @IBAction func orderPizza(_ sender:Any) {
           let row = pizzaPicker.selectedRow(inComponent:0)
           pizzaLabel.text = "You ordered a "+pizzaFlavors[row]
       }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pizzaFlavors[row]
    }
}

