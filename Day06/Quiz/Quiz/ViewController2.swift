//
//  ViewController2.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/02.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var tfInputNum: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tvResult.isEditable = false
    }
    
    @IBAction func btnOutput(_ sender: UIButton) {
        let textCheck = tfInputNum.text!.trimmingCharacters(in: .whitespaces)
        
        if !textCheck.isEmpty {
            tvResult.text = ""
            
            let dan = Int(textCheck)!
            
            for i in 1...9 {
                tvResult.text += "\(textCheck) X \(i) = \(i * dan)\n"
            }
        }
        
        tfInputNum.text = ""
    }
    
    

}
