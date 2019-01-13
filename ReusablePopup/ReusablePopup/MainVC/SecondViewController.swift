//
//  SecondViewController.swift
//  ReusablePopup
//
//  Created by 10.12 on 2019/1/12.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromSecondVCToDatePopupVC" {
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
            // 1.assign a function
            popup.onSave = onSave
//            // 2.using a closure
//            popup.onSave = { (data: String) -> () in
//                self.dateLabel.text = data
//            }
        }
    }
    
    func onSave(_ data: String) -> () {
        dateLabel.text = data
    }

}

