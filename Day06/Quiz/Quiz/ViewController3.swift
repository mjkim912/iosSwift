//
//  ViewController3.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/02.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var tvMessage: UITextView!
    @IBOutlet weak var tfContent: UITextField!
    
    var emoji:String = "😁"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tvMessage.isEditable = false
    }
    
    @IBAction func btnSend(_ sender: UIButton) {
        guard let txtMsg = tfContent.text else {return}
        let numCheck = checkNil(str: txtMsg)
            
        if numCheck {
            tvMessage.text += txtMsg + "\n"
        }
        
        tfContent.text = ""
    }
    
    @IBAction func btnSmile(_ sender: UIButton) {
        emoji = "😁"
    }
    @IBAction func btnDevil(_ sender: UIButton) {
        emoji = "👿"
    }
    @IBAction func btnAngry(_ sender: UIButton) {
        emoji = "😡"
    }
    
    @IBAction func btnEmoji(_ sender: UIButton) {
        tfContent.text! += emoji
    }
    
    // nil check function
    func checkNil(str: String) -> Bool {
        let check = str.trimmingCharacters(in: .whitespaces)
        
        if check.isEmpty {
            return false
        } else {
            return true
        }
    }
    
}
