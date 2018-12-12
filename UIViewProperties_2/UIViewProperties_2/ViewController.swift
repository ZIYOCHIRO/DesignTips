//
//  ViewController.swift
//  UIViewProperties_2
//
//  Created by 10.12 on 2018/12/12.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backgroundColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // opacity VS. Alpha VS. Opaque
        // when we chooes the background color of fontcolor, we might use the opacity, it only changes the color property
        // when we set the alpha in a UIview, like Label or Button, it changes everything inside it
        // Opaque: Alpha = 1, no transparence. if chenk this, will run faster, because it means Since anything behind this can't be seen, so you can ignore it right now and worry about it later.
        
        
        // to show this animation, you have to set alpha to 0 in storyboard
        UIView.animate(withDuration: 2, animations: {
            self.view.alpha = 1
            })
    }

    @IBAction func changeBackgroundColor(_ sender: Any) {
        
        // this will tailor the image
        backgroundColorView.backgroundColor = UIColor(patternImage: UIImage(named: "backgroundImage")!)
    }
    
    @IBAction func animateBackgroundColor(_ sender: UIButton) {
        UIView.animate(withDuration: 2, animations: {
            self.backgroundColorView.backgroundColor = UIColor.orange
        })

    }
}

