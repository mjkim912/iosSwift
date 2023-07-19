//
//  ViewController.swift
//  Quiz04
//
//  Created by MinJi Kim on 2023/06/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfData: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAction(_ sender: UIButton) {
//        guard let check2 = tfData.text else {return}
//
//        if check2.count == 0 {
//            lblMessage.text = "데이터를 확인하세요."
//        } else {
//            lblMessage.text = check2
//        }
        
        lblMessage.text = tfData.text!
        
    }
    
}

