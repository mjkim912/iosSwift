//
//  ViewController5.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/16.
//

import UIKit

class ViewController5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnGoImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func btnGoDatePicker(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
}
