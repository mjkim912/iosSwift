//
//  ViewController.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNumber: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnRecog(_ sender: UIButton) {
        if tfNumber.text!.isEmpty {
            lblMessage.text = "숫자를 입력해주세요."
            return
        }
        
        let intNumber = Int(tfNumber.text!)!
        var message: String
        
        if intNumber > 0 {
            if intNumber % 2 == 0 {
                message = "짝수"
            } else {
                message = "홀수"
            }
            lblMessage.text = "입력하신 숫자는 \(message) 입니다."
            
        } else if intNumber == 0 {
            lblMessage.text = "입력하신 숫자는 0 입니다."
        }
    }
    
}

