//
//  data.swift
//  UIPickerView
//
//  Created by 10.12 on 2019/1/18.
//  Copyright © 2019 Rui. All rights reserved.
//

import Foundation

class Data {
    
    class func getData() -> [PriceModel] {
        
        var data = [PriceModel]()
        data.append(PriceModel(dayName: "Monday", price: "$80", date: "01 MAY 2017"))
        data.append(PriceModel(dayName: "Tuesday", price: "$75", date: "02 MAY 2017"))
        data.append(PriceModel(dayName: "Wednesdat", price: "$70", date: "03 MAY 2017"))
        data.append(PriceModel(dayName: "Thursday", price: "$70", date: "04 MAY 2017"))
        data.append(PriceModel(dayName: "Friday", price: "$100", date: "05 MAY 2017"))
        data.append(PriceModel(dayName: "Saturday", price: "$120", date: "06 MAY 2017"))
        data.append(PriceModel(dayName: "Sunday", price: "$95", date: "07 MAY 2017"))
        data.append(PriceModel(dayName: "Monday", price: "$80", date: "08 MAY 2017"))
        data.append(PriceModel(dayName: "Tuesday", price: "$75", date: "09 MAY 2017"))
        data.append(PriceModel(dayName: "Wednesdat", price: "$70", date: "10 MAY 2017"))
        data.append(PriceModel(dayName: "Thursday", price: "$70", date: "11 MAY 2017"))
        data.append(PriceModel(dayName: "Friday", price: "$100", date: "12 MAY 2017"))
        data.append(PriceModel(dayName: "Saturday", price: "$120", date: "13 MAY 2017"))
        data.append(PriceModel(dayName: "Sunday", price: "$95", date: "14 MAY 2017"))
        
        return data
    }
    
    
}
