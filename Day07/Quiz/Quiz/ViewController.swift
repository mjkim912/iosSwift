//
//  ViewController.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var lblMessage1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblMessage.text = "숫자를 입력하세요."
    }

    @IBAction func btnAdd(_ sender: UIButton) {
        let intNum1 = Int(tfNum1.text!) ?? 0
        let intNum2 = Int(tfNum2.text!) ?? 0
        
        let calc = Calculate()
        calc.SetNum(num1: intNum1, num2: intNum2)
        let result = calc.GetResult()
        lblMessage.text = result
        
        let calc1 = Calculate1()
        lblMessage1.text = "덧셈결과는 \(calc1.add(num1: intNum1, num2: intNum2)) 입니다."
    }
    
}

