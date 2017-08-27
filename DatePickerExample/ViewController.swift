//
//  ViewController.swift
//  DatePicker
//
//  Created by SaiSandeep on 27/08/17.
//  Copyright © 2017 iOSRevisited. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adddatePicker()
    }
    
    func adddatePicker() {
        view.addSubview(datePicker)
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.heightAnchor.constraint(equalToConstant: 250).isActive = true
        datePicker.leadingAnchor.constraint(equalTo:view.leadingAnchor).isActive = true
        datePicker.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        datePicker.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        // countDown timer
        datePicker.datePickerMode = .countDownTimer
        let fiveMin = TimeInterval(5 * 60)
        datePicker.countDownDuration = fiveMin
        
        
        /* maximum and minimum limits starts
         datePicker.addTarget(self, action: #selector(datePickerChanged(datePicker:)), for: .valueChanged)
         let currentDate = Date()
         let oneDay = 24 * 60 * 60
         let minDate = currentDate.addingTimeInterval(TimeInterval(-10 * oneDay)) // before 10 days from now
         let maxDate = currentDate.addingTimeInterval(TimeInterval(20 * oneDay)) // upto 20 Days from now
         
         datePicker.minimumDate = minDate
         datePicker.maximumDate = maxDate
         maximum and minimum limits ends */
    }
    
    func datePickerChanged(datePicker: UIDatePicker){
        print("date = \(datePicker.date)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



