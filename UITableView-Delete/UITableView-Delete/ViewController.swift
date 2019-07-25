//
//  ViewController.swift
//  UITableView-Delete
//
//  Created by ziyochiro on 2019/7/23.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var exampleContent: [String] = ["item1", "item2", "item3", "item4", "item5"]

    @IBOutlet weak var exampleTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exampleTableView.delegate = self
        exampleTableView.dataSource = self
        exampleTableView.separatorStyle = .none
        exampleTableView.register(UINib.init(nibName: "DeleteTableViewCell", bundle: nil), forCellReuseIdentifier: "DeleteTableViewCell")
        
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exampleContent.count
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeleteTableViewCell", for: indexPath) as! DeleteTableViewCell
        cell.contentLabel.text = exampleContent[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction.init(style: .default, title: "删除") { (action, indexpath) in
        }
        delete.backgroundColor = UIColor.lightGray
        return [delete]
    }
    
    
}

