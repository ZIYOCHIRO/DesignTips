//
//  DeleteTableViewCell.swift
//  UITableView-Delete
//
//  Created by ziyochiro on 2019/7/23.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

class DeleteTableViewCell: UITableViewCell {
    @IBOutlet weak var cornerView: UIView!
    
    @IBOutlet weak var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cornerView.setShadow(withRadius:10)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none

        // Configure the view for the selected state
    }
    
}

extension UIView {
    
    func setShadow(withRadius Radius: CGFloat) {
        self.layer.cornerRadius = Radius
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOpacity = 0.4
        self.layer.shadowRadius = 4
        self.layer.masksToBounds = false
        
    }
    
    
    func setCornerRadius(with Radius: CGFloat) {
        self.layer.cornerRadius = Radius
    }
}
