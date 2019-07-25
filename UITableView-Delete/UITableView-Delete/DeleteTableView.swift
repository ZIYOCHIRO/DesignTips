//
//  DeleteTableView.swift
//  UITableView-Delete
//
//  Created by ziyochiro on 2019/7/23.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

class DeleteTableView: UITableView {
    
    @IBInspectable var cellHeight: CGFloat = 60 {
        didSet {
            layoutSubviews()
        }
    }
    
    @IBInspectable var buttonColor: UIColor = .red {
        didSet {
            layoutSubviews()
        }
    }
    
    var buttonTitle: String = "删除"
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if #available(iOS 11.0, *) {
            for subview in self.subviews where subview.isKind(of: NSClassFromString("UISwipeActionPullView")!) {
                
                for view in subview.subviews where view.isKind(of: NSClassFromString("UISwipeActionStandardButton")!) {
                    
                    
                    view.frame = CGRect.init(x: 0, y: 7.5, width: 60, height: cellHeight)
                    
                    for subSubView in view.subviews where view.isKind(of: UIButton.self) {
                        subSubView.removeFromSuperview()
                    }
                 
                    let deleteButton = setDeleteButton(frame: view.frame)
                    view.addSubview(deleteButton)
                    view.bringSubviewToFront(deleteButton)
                    
                }
            }
            
        } else {    // IOS 10以及以下
            for subview in subviews where subview.isKind(of: NSClassFromString("UITableViewCellDeleteConfirmationView")!) {
                subview.backgroundColor = buttonColor
                
                for view in subview.subviews where view.isKind(of: UIButton.self) {
                    view.backgroundColor = buttonColor
                    
                    view.backgroundColor = UIColor.clear
                    view.frame = CGRect.init(x: 0, y: 7.5, width: 60, height: cellHeight )
                    
                    let deleteButton = setDeleteButton(frame: view.frame)
                    view.addSubview(deleteButton)
                    view.bringSubviewToFront(deleteButton)
                }
            }
        }
    }
    
    private func setDeleteButton(frame: CGRect) -> UIButton {
        let deleteButton = UIButton(type: .custom)
        deleteButton.frame = CGRect.init(x: 10, y: 0, width: cellHeight, height: cellHeight )
        deleteButton.backgroundColor = buttonColor
        deleteButton.setTitle(buttonTitle, for: .normal)
        deleteButton.setTitleColor(UIColor.white, for: .normal)
        deleteButton.titleLabel?.numberOfLines = 0
        deleteButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        deleteButton.setCornerRadius(with: cellHeight / 2)
        
        return deleteButton
    }

}


