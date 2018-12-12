//
//  ViewController.swift
//  UIViewProperties_3
//
//  Created by 10.12 on 2018/12/12.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SmileView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func Disappear(_ sender: UIButton) {
//        UIView.animate(withDuration: 2, animations: {
//            self.SmileView.alpha = 0
//        })
        self.SmileView.isHidden = true
    }
    @IBAction func ShowImae(_ sender: UIButton) {
//        UIView.animate(withDuration: 2, animations: {
//            self.SmileView.alpha = 1
//        })
        self.SmileView.isHidden = false
        
    }
    
}

