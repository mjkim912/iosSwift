//
//  ViewController2.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/06/24.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSum(_ sender: UIButton) {
        var intNum1: Int = 0
        var intNum2: Int = 0
        
        //intNum1 = tfNum1.text!.isEmpty ? 0 : Int(tfNum1.text!)!
        //intNum2 = tfNum2.text!.isEmpty ? 0 : Int(tfNum2.text!)!
        
        intNum1 = Int(tfNum1.text!) ?? 0
        intNum2 = Int(tfNum2.text!) ?? 0
        
        if intNum2 < intNum1 {
            let temp = intNum1
            intNum1 = intNum2
            intNum2 = temp
        }
        
        var sum: Int = 0
        for i in intNum1...intNum2 {
            sum += i
        }
        
        lblMessage.text = "\(intNum1) 부터 \(intNum2) 까지의 합은 \(sum) 입니다."
        
    }
    
}
