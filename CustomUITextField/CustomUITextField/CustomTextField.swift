//
//  CustomTextField.swift
//  CustomUITextField
//
//  Created by 10.12 on 2019/1/19.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {

    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateView()
        }
    }
    @IBInspectable var leftPadding: CGFloat = 0 {
        didSet {
            updateView()
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    func updateView() {
        
        attributedPlaceholder = NSAttributedString(string: placeholder != nil ? placeholder! : "", attributes: [NSAttributedString.Key.foregroundColor : tintColor])
        if let image = leftImage {
            leftViewMode = .always
            
            let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: 20, height: 20))
            imageView.image = image
            imageView.tintColor = tintColor
        

            let view = UIView(frame: CGRect(x: 0, y: 0, width: leftPadding + 20, height: 20))
            view.addSubview(imageView)
            
            leftView = view
         
        } else {
            leftViewMode = .never
        }
        
        
    }

}
