//
//  ViewController.swift
//  CoolButtonAnimation
//
//  Created by 10.12 on 2018/12/27.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var buttons: [UIButton]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }

    @IBAction func pulseButtonTapped(_ sender: UIButton) {
        sender.pulsate()
    }
    
    @IBAction func flashButtonTapped(_ sender: UIButton) {
        sender.flash()
    }
 
    
    @IBAction func shakeButtonTapped(_ sender: UIButton) {
        sender.shake()
    }
    
    
    
    
    
    
    
}



