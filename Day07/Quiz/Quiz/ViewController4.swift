//
//  ViewController4.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/08.
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
        let sum = sumTwoNum(strNum1: tfNum1.text!, strNum2: tfNum2.text!)
        
        if sum == -1 {
            lblMessage.text = "짝수만 입력하세요."
        } else {
            tfResult.text = String(sum)
            lblMessage.text = "계산이 완료되었습니다."
        }
    }
    
    func sumTwoNum(strNum1: String, strNum2: String) -> Int {
        let intNum1 = Int(strNum1) ?? 0
        let intNum2 = Int(strNum2) ?? 0
        
        if intNum1 % 2 == 0 && intNum2 % 2 == 0 {
            return intNum1 + intNum2
        } else {
            return -1
        }
    }

}
