//
//  FirstViewController.swift
//  ReusablePopup
//
//  Created by 10.12 on 2019/1/12.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    var observer: NSObjectProtocol?
    
//    @objc func handlePopupclosing(notification: Notification) {
//        let dateVC = notification.object as! DatePopupViewController
//        dateLabel.text = dateVC.formattedDate
//
//    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 1. Notification OLD way
        //        // add notification observer to receive message
        //        NotificationCenter.default.addObserver(self, selector: #selector(handlePopupclosing(notification:)), name: .saveDateTime, object: nil)
        // 1. Notification NEW way
        observer = NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: OperationQueue.main) { (notification) in
            let dateVC = notification.object as! DatePopupViewController
            self.dateLabel.text = dateVC.formattedDate
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if let observer = observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }

    // 1. passing date through segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromFirstVCToDatePopupVC" {
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
            
        }
    }

}

