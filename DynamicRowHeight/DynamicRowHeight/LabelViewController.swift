//
//  LabelViewController.swift
//  DynamicRowHeight
//
//  Created by 10.12 on 2019/3/26.
//  Copyright © 2019 Rui. All rights reserved.
//

import UIKit

class LabelViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    let textInLabel = "hello, I'm charlie and I really wanna ask you something."
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = textInLabel

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
