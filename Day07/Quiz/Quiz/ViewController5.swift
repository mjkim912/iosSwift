//
//  ViewController5.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/08.
//

import UIKit

class ViewController5: UIViewController {
    
    @IBOutlet weak var tfFirstNum: UITextField!
    @IBOutlet weak var tfSecondNum: UITextField!
    
    @IBOutlet weak var tfSum: UITextField!
    @IBOutlet weak var tfSub: UITextField!
    @IBOutlet weak var tfMult: UITextField!
    @IBOutlet weak var tfQuot: UITextField!
    @IBOutlet weak var tfRemainder: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initField()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func btnCalculate(_ sender: UIButton) {
        // 두 개의 필드에 모두 입력되었나?
        guard let num1 = tfFirstNum.text else {return}
        guard let num2 = tfSecondNum.text else {return}
        
        let checkNum1 = num1.trimmingCharacters(in: .whitespaces)
        let checkNum2 = num2.trimmingCharacters(in: .whitespaces)
        
        /*
         2번째 방법
        let num1Check: Int = checkNil(str: num1)
        let num2Check: Int = checkNil(str: num2)
        
        if num1Check + num2Check != 2 {
            lblResult.text = "숫자를 입력하세요!"
        } else {
            // 정상 계산
        }
         */
        
        if checkNum1.isEmpty || checkNum2.isEmpty {
            cleanField()
            return
        }
        
        calculateTwoNum(num1: num1, num2: num2)
        
        lblResult.text = "계산되었습니다."
    }

    func calculateTwoNum(num1: String, num2: String) {
        let intNum1 = Int(num1)!
        let intNum2 = Int(num2)!
        
        tfSum.text = String(intNum1 + intNum2)
        tfSub.text = String(intNum1 - intNum2)
        tfMult.text = String(intNum1 * intNum2)
        
        if intNum2 != 0 {  // 두 번째 숫자가 0이 아닌 경우
            tfQuot.text = String(intNum1 / intNum2)
            tfRemainder.text = String(intNum1 % intNum2)
            
        } else {    // 두 번째 숫자가 0인 경우 : 오류
            tfQuot.text = "계산불가"
            tfRemainder.text = "계산불가"
        }
    }
    
    func cleanField() {
        tfFirstNum.becomeFirstResponder()
        lblResult.text = "숫자를 확인하세요!"
        
        tfSum.text = ""
        tfSub.text = ""
        tfMult.text = ""
        tfQuot.text = ""
        tfRemainder.text = ""
    }
    
    func initField() {
        lblResult.text = "환영합니다!"
        
        // 텍스트필드를 ReadOnly로 바꾼다.
        tfSum.isUserInteractionEnabled = false
        tfSub.isUserInteractionEnabled = false
        tfMult.isUserInteractionEnabled = false
        tfQuot.isUserInteractionEnabled = false
        tfRemainder.isUserInteractionEnabled = false
    }
    
    func checkNil(str: String) -> Int {
        let check = str.trimmingCharacters(in: .whitespaces)
        
        if check.isEmpty {
            return 0
        } else {
            return 1
        }
    }
    
}
