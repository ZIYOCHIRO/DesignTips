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
    
    let sectionTitles: [String] = ["Mummies", "Devils", "Ghosts"]
    let sectionImages: [UIImage] = [UIImage(named: "mummy")!, UIImage(named: "devil")!, UIImage(named: "ghost")!]
    let s1Data: [String] = ["Row 1", "Row 2", "Row 3"]
    let s2Data: [String] = ["Row 1", "Row 2", "Row 3"]
    let s3Data: [String] = ["Row 1", "Row 2", "Row 3"]
    
    var sectionData: [Int:[String]] = [:]

    // 1. dynamic row height
    // 2. Add table view header and footers
    // 3. Custom UITableView Section Headers With prototype cells
    override func viewDidLoad() {
        super.viewDidLoad()
        // we all ready set these in storyboard
        tableView.delegate = self
        tableView.dataSource = self
        
        sectionData = [0: s1Data, 1: s2Data, 2: s3Data]
        
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
    
    // MARK: - Those 2 are Table view delegate functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (sectionData[section]?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = sectionData[indexPath.section]![indexPath.row]
        cell?.textLabel?.numberOfLines = 0
        //  To remove any maximum limit, and use as many lines as needed, set the value of this property to 0.
        return cell!
    }
    
    // MARK: - all functions are about sections
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // set in code
//        let view = UIView()
//        view.backgroundColor = UIColor.orange
//        let imageview = UIImageView(image: sectionImages[section])
//        imageview.frame = CGRect(x: 5, y: 5, width: 35, height: 35)
//        view.addSubview(imageview)
//
//        let label = UILabel()
//        label.text = sectionTitles[section]
//        label.frame = CGRect(x: 45, y: 5, width: 100, height: 35)
//        view.addSubview(label)
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell\(section)") as! TableViewHeaderCell
        cell.headerImage.image = sectionImages[section]
        cell.headerLabel.text = sectionTitles[section]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }


}

