//
//  CustomPicker.swift
//  UIPickerView
//
//  Created by 10.12 on 2019/1/18.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

class CustomPicker: UIPickerView {

    var modelData: [PriceModel]!
    let customWidth: CGFloat = 100
    let customHeight: CGFloat = 100
    
   

}

extension CustomPicker: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return modelData.count
    }
    
    // -------------------- customize ----------------------
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return customHeight
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: customWidth, height: customHeight))
        
        let topLabel = UILabel(frame: CGRect(x: 0, y: 10, width: customWidth, height: 15))
        topLabel.text = modelData[row].dayName
        topLabel.textColor = UIColor.black
        topLabel.textAlignment = .center
        topLabel.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.thin)
        view.addSubview(topLabel)
        let mediumLabel = UILabel(frame: CGRect(x: 0, y: 0, width: customWidth, height: customHeight))
        mediumLabel.text = modelData[row].price
        mediumLabel.textAlignment = .center
        mediumLabel.font = UIFont.systemFont(ofSize: 42, weight: UIFont.Weight.thin)
        view.addSubview(mediumLabel)
        let bottomLabel = UILabel(frame: CGRect(x: 0, y: 78, width: customWidth, height: 15))
        bottomLabel.text = modelData[row].date
        bottomLabel.textAlignment = .center
        bottomLabel.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.thin)
        view.addSubview(bottomLabel)
        
        view.transform = CGAffineTransform(rotationAngle: 90 * (.pi/180))
        
        return view
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // Add notificaiton center to post the message, viewcontroller is gonna listen to the radio
        NotificationCenter.default.post(name: NSNotification.Name("pickerChanged"), object: self)
    }
    
}
