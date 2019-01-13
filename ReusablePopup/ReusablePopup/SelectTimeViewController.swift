//
//  SelectTimeViewController.swift
//  ReusablePopup
//
//  Created by 10.12 on 2019/1/12.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func selectTime(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let popup = storyboard.instantiateInitialViewController()! as! DatePopupViewController
        // 2.use storyboard to get VC, then passing data
        popup.showTimePicker = true
        
        self.present(popup, animated: true)
    }
    
  

}
