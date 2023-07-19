//
//  ViewController4.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/06/24.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var tfResult: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCalculate(_ sender: UIButton) {
        let intNum1 = Int(tfNum1.text!) ?? 0
        let intNum2 = Int(tfNum2.text!) ?? 0
        
        if intNum1 % 2 == 0 && intNum2 % 2 == 0 {
            tfResult.text = String(intNum1 + intNum2)
            lblMessage.text = "계산이 완료되었습니다."
        } else {
            lblMessage.text = "짝수만 입력하세요."
        }
    }

}
