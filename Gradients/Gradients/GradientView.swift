//
//  GradientView.swift
//  Gradients
//
//  Created by 10.12 on 2018/12/11.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    // Gradient: Gradual transition from one color to another
    @IBInspectable var FirstColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var SecondColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var ThirdColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [FirstColor.cgColor, SecondColor.cgColor, ThirdColor.cgColor]
        layer.locations = [0.5, 0.8] // decide where should the color transition start and end
    }

   

}
