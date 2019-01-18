//
//  dataModel.swift
//  UIPickerView
//
//  Created by 10.12 on 2019/1/18.
//  Copyright © 2019 Rui. All rights reserved.
//

import Foundation

class PriceModel {
    var dayName = ""
    var price = ""
    var date = ""
    
    init(dayName: String, price: String, date: String) {
        self.dayName = dayName
        self.price = price
        self.date = date
    }
    
    
}
