//
//  ViewController.swift
//  CustomUITableView
//
//  Created by 10.12 on 2018/12/12.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var tableData: [String] = ["Rod",
                               "Mark",
                               "Lem - He is from the Philippinesl. He's a Filipino! Add more words here to show the difference!",
                               "Evans"]

    // 1. dynamic row height
    // 2. Add table view header and footers
    // 3. Custom UITableView Section Headers With prototype cells
    override func viewDidLoad() {
        super.viewDidLoad()
        // we all ready set these in storyboard
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableView.automaticDimension
        // Add header and footer in code or in storyboard
        let headerView = UIView() // if header/footer view doesn't have size, it won't show
        headerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
        headerView.backgroundColor = UIColor.blue
        let footerView = UIView()
        footerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
        footerView.backgroundColor = UIColor.green
        tableView.tableHeaderView = headerView
        tableView.tableFooterView = footerView
        
    }
    
    // Table view delegate functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = tableData[indexPath.row]
        cell?.textLabel?.numberOfLines = 0
        //  To remove any maximum limit, and use as many lines as needed, set the value of this property to 0.
        return cell!
    }


}

