//
//  ToggleButton.swift
//  Toggle Button
//
//  Created by 10.12 on 2018/12/27.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ToggleButton: UIButton {

    var isOn = false

    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    // the code above must be replaced following...
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    


    func initButton() {
        layer.borderWidth =  2.0
        layer.borderColor = Colors.Blue.cgColor // on the layer, go cgcolor
        layer.cornerRadius = frame.size.height/2

        setTitleColor(Colors.Blue, for: .normal)
        addTarget(self, action: #selector(ToggleButton.buttonPressed), for: .touchUpInside)
    }

    @objc func buttonPressed() {
        activeButton(bool: !isOn)
    }

    func activeButton(bool: Bool) {
        isOn = bool

        let color = bool ? Colors.Blue : .clear
        let title = bool ? "Following" : "Follow"
        let titleColor = bool ? .white : Colors.Blue

        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        backgroundColor = color
    }
    

    
    
}
