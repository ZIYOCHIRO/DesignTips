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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func saveDate(_ sender: Any) {
        dismiss(animated: true)
    }
    

  

}
