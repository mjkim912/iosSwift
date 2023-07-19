//
//  ViewController3.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/06/24.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    
    var toggle: Bool = true
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblMessage.text = "Welcome!"
    }

    @IBAction func btnToggle(_ sender: UIButton) {
        /*
         방법 1
         toggle = toggle ? false : true
         
         if toggle {
            lblMessage.text = "Welcome!"
         } else {
            lblMessage.text = "Welcome! MJ"
         }
         */
        
        /*
         방법 2
        if count % 2 == 0 {
            lblMessage.text = "Welcome! MJ"
        } else {
            lblMessage.text = "Welcome!"
        }
        count += 1
         */
        
        
    }
}
