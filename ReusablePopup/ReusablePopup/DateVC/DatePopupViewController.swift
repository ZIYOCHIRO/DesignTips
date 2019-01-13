//
//  DataPopupViewController.swift
//  ReusablePopup
//
//  Created by 10.12 on 2019/1/12.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

class DatePopupViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveButton: UIButton!
    
    var showTimePicker: Bool = false
    
    var onSave:((_ data: String) -> ())?
    
    var formattedDate: String {
        get {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            return formatter.string(from: datePicker.date)
        }
    }
    var formattedTime: String {
        get {
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            return formatter.string(from: datePicker.date)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if showTimePicker {
            titleLabel.text = "Select Time"
            datePicker.datePickerMode = .time
            saveButton.setTitle("Save Time", for: .normal)
        }
    }
    
    
    @IBAction func saveDate(_ sender: Any) {
        // add notifaction center to broadcast message
        NotificationCenter.default.post(name: Notification.Name.saveDateTime, object: self)
        if showTimePicker {
            onSave?(formattedTime)
        } else {
            onSave?(formattedDate)
        }
        
        dismiss(animated: true)
    }
    
    
    

  

}
