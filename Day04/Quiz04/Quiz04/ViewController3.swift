//
//  ViewController3.swift
//  Quiz04
//
//  Created by MinJi Kim on 2023/06/25.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var lblArrEmoji: UILabel!
    @IBOutlet weak var lblBigEmoji: UILabel!
    
    let arrEmoji = ["😁", "😈", "😡", "😍", "😭", "😷"]
    var indexState = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblArrEmoji.text = ""
        for i in arrEmoji {
            lblArrEmoji.text?.append(i)
        }
        lblBigEmoji.text = arrEmoji[indexState]
    }
    
    @IBAction func btnPrev(_ sender: UIButton) {
        indexState -= 1
        if indexState < 0 {
            indexState = arrEmoji.count - 1
        }
        lblBigEmoji.text = arrEmoji[indexState]
    }
    
    @IBAction func btnPlay(_ sender: UIButton) {
        indexState += 1
        if indexState >= arrEmoji.count {
            indexState = 0
        }
        lblBigEmoji.text = arrEmoji[indexState]
    }
    
}
