//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by 10.12 on 2019/3/31.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fileView: UIImageView!
    @IBOutlet weak var trashView: UIImageView!
    
    var fileViewOrigin: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addPanGesture(view: fileView)
        fileViewOrigin = fileView.frame.origin
        view.bringSubviewToFront(fileView)
        
    }
    
    func addPanGesture(view: UIView) {
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(sender:)))
        view.addGestureRecognizer(pan)
        
    }
    
    @objc func handlePan(sender: UIPanGestureRecognizer) {
        
        let fileview = sender.view!
        let translation = sender.translation(in: view)
        
        switch sender.state {
        case .began, .changed:
            fileview.center = CGPoint(x: fileview.center.x + translation.x, y: fileview.center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: view)
        case .ended:
            if fileview.frame.intersects(trashView.frame) {
                UIView.animate(withDuration: 0.3) {
                    self.fileView.alpha = 0
                }
            }
        default:
            break
        }
    }


}

