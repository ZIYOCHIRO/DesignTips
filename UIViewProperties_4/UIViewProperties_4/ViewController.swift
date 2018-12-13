//
//  ViewController.swift
//  UIViewProperties_4
//
//  Created by 10.12 on 2018/12/12.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pinkView: UIView!
    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // if check Clip to Bounds box, the shadow won't show
        pinkView.layer.shadowOpacity = 1
    }


}

