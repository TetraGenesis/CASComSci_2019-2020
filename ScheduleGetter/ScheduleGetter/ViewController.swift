//
//  ViewController.swift
//  ScheduleGetter
//
//  Created by Ezra Barber on 10/23/19.
//  Copyright © 2019 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var curDayType = "A"
    var curWeekday = "Monday"
    var curSchedule = "Regular"
    @IBOutlet weak var schedulePicker: UIPickerView!
    @IBOutlet weak var getterButton: UIButton!
    @IBOutlet weak var label: UILabel!
    let weekdays:[String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    let dayType:[String] = ["A", "C", "B"]
    let scheduleType:[String] = ["Regular", "Double Block", "Assembly", "Special"]
    let afternoonClasses:[String:String] = [
        "Monday":"21st St. Singers",
        "Tuesday":"Double Free",
        "Wednesday":"Double Free",
        "Thursday":"21st St. Singers",
        "Friday":"Lifeskills"
    ]
    let mySchedule:[String:String] = [
    "A":"CAS Mandarin",
    "B":"Computer Science",
    "C":"Marine Biology",
    "D":"Free Period",
    "E":"English",
    "F": "Trig Honors/Differential Calc",
    "M/Th Arts":"21st St. Singers",
        "Tues/Wed Block":"Double Free Period",
        "Fri Block":"Lifeskills"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return dayType.count
        }
        else if component == 1 {
            return weekdays.count
        }
        else {
            return scheduleType.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return dayType[row]
        }
        else if component == 1 {
            return weekdays[row]
            }
        else {
            return scheduleType[row]
        }
    }
        

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getSchedule(_ sender: Any) {
        let dayTypeRow = schedulePicker.selectedRow(inComponent: 0)
        let ACBDay = dayType[dayTypeRow]
        
        let periodRotation:[String:[String]] = [
            "A":["A", "B", "D", "E"],
            "C":["C", "A", "F", "D"],
            "B":["B", "C", "E", "F"]
        ]
        let mySched = getScheduleForDay(periods: periodRotation[ACBDay]!, mySchedule: mySchedule)
        label.text = mySched
    }
    func getScheduleForDay(periods:[String], mySchedule:[String:String]) -> String {
        var output = ""
        for period in periods {
            output += "\(period) - "
            output += mySchedule[period] ?? "free period"
            output += "\n"
        }
        let weekdayPeriod = schedulePicker.selectedRow(inComponent: 1)
        let afternoonPeriod = weekdays[weekdayPeriod]
        let classAfternoon = afternoonClasses[afternoonPeriod]
        output += "\(classAfternoon!)"
        return output
    }
    
}

// 0x68 0x61, 0x68 0x61, 0x68 0x61

