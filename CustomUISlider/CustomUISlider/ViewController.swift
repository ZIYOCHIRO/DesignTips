//
//  ViewController.swift
//  CustomUISlider
//
//  Created by 10.12 on 2019/1/19.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var percentSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        percentSlider.value = roundf(percentSlider.value)
    }
    


}

