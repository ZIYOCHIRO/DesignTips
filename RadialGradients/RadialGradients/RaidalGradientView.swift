//
//  RaidalGradientView.swift
//  RadialGradients
//
//  Created by 10.12 on 2018/12/11.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

@IBDesignable
class RaidalGradientView: UIView {
    // need at least 2 colors: inner color inside the circle and the outer color
    @IBInspectable var InsideColor: UIColor = UIColor.clear
    @IBInspectable var OutsideColor: UIColor = UIColor.clear
    

    override func draw(_ rect: CGRect) {
        let colors = [InsideColor.cgColor, OutsideColor.cgColor] as CFArray
        let maxRadius = min(frame.width, frame.height) / 2  // max Radius in a rectangle view
        let center = CGPoint(x: bounds.size.width/2, y: bounds.size.height/2)
        // create gradient
        let gradient = CGGradient(colorsSpace: nil, colors: colors, locations: nil) // color is CFArray
        // graphics context: Drawing area, colors to use, Line width and style, font, Device information
        UIGraphicsGetCurrentContext()!.drawRadialGradient(gradient!, startCenter: center, startRadius: 0.0, endCenter: center, endRadius: maxRadius, options: CGGradientDrawingOptions.drawsAfterEndLocation)// change this to drawAfterEndLocation
    
    }
    
}






