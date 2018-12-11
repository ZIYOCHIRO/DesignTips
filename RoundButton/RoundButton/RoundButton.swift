//
//  RoundButton.swift
//  RoundButton
//
//  Created by 10.12 on 2018/12/11.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

// make the changes in the IB builder
@IBDesignable

class RoundButton: UIButton {
    // Need 3 properties
    // 1.border width
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    // 2.border color
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    // 3.corner radius
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    

}






