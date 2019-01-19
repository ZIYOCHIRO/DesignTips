
//
//  CustomSlider.swift
//  CustomUISlider
//
//  Created by 10.12 on 2019/1/19.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit


@IBDesignable
class CustomSlider: UISlider {
    
    // the size is 30x30
    @IBInspectable var thumbImage: UIImage? {
        didSet {
            setThumbImage(thumbImage, for: .normal)
        }
    }
    
    @IBInspectable var highlightImage: UIImage? {
        didSet {
            setThumbImage(highlightImage, for: .highlighted)
        }
    }

}
