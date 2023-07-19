//
//  ViewController3.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/09.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tfInput.delegate = self
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        lblResult.text = tfInput.text
    }
    
} // ViewController3

extension ViewController3: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        lblResult.text = tfInput.text
        return true
    }
}
