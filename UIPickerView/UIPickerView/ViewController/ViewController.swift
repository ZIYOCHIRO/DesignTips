//
//  ViewController.swift
//  UIPickerView
//
//  Created by 10.12 on 2019/1/18.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var arrivePicker: UIPickerView!
    @IBOutlet weak var departPicker: UIPickerView!
    @IBOutlet weak var sumLabel: UILabel!
    
    var priceModelPicker: CustomPicker!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        pickerChanged()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // listen to the radio
        NotificationCenter.default.addObserver(self, selector: #selector(pickerChanged), name: NSNotification.Name("pickerChanged"), object: nil)
        
        priceModelPicker = CustomPicker()
        priceModelPicker.modelData = Data.getData()
        
        var y = arrivePicker.frame.origin.y
        arrivePicker.transform = CGAffineTransform(rotationAngle: -90 * (.pi/180))
        arrivePicker.frame = CGRect(x: -100, y: y, width: view.frame.width + 200, height: 100)
        arrivePicker.delegate = priceModelPicker
        arrivePicker.dataSource = priceModelPicker
        
        y = departPicker.frame.origin.y
        departPicker.transform = CGAffineTransform(rotationAngle: -90 * (.pi/180))
        departPicker.frame = CGRect(x: -100, y: y, width: view.frame.width + 200, height: 100)
        departPicker.delegate = priceModelPicker
        departPicker.dataSource = priceModelPicker
        departPicker.selectRow(2, inComponent: 0, animated: true)
        
    }
    
    @objc func pickerChanged() {
        let start = arrivePicker.selectedRow(inComponent: 0)
        let end = departPicker.selectedRow(inComponent: 0)
        
        var totalPrice: Int = 0
        let selectedDates = priceModelPicker.modelData[start..<end+1]
        for date in selectedDates {
            let priceString = date.price.replacingOccurrences(of: "$", with: "")
            totalPrice += Int(priceString)!
        }
        sumLabel.text = "$ \(totalPrice)"
    }

}


