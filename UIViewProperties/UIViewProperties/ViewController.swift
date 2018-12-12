//
//  ViewController.swift
//  UIViewProperties
//
//  Created by 10.12 on 2018/12/12.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // a more efficient way to do this is using an outlet
        // if there are two labels with same Tag, it only affects the first fond label
        let tagExampleLabel = view.viewWithTag(666) as! UILabel
        tagExampleLabel.text = "This is a label with Tag 666 !"
        
        // when to use tag ?
        // create label in code, you need use tag number as a reference
        let label2 = UILabel(frame: CGRect(x: 0, y: 500, width: view.frame.width, height: 40))
        label2.textAlignment = NSTextAlignment.center
        label2.tag = 2
        view.addSubview(label2)
    }

    @IBAction func sendText(_ sender: UIButton) {
        let label = view.viewWithTag(2) as! UILabel
        label.text = "Hello, I'm coming!"
    }
    
}

