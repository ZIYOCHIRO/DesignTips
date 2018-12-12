//
//  ViewController.swift
//  UIViewProperties_1
//
//  Created by 10.12 on 2018/12/12.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var touchesLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickButton(_ sender: UIButton) {
        // if uncheck User interaction enabled, the following action won't happen
        sender.setTitle("Click", for: .normal)
        // if add a UIView above the button, click --> no response
        // if add a UIView above the button, and set the alpha to 0, click --> have response
        // if add a UIView above the button, set the alpha to 0, and uncheck UIView's User interaction enabled, click --> have response
        // if uncheck a UIView's User interaction enabled, then every thing inside that view will be disabled
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // hold option + click : double click
        touchesLabel.text = "\(touches.count)"
        
    }
    
}

