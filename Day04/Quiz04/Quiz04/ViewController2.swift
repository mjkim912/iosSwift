//
//  ViewController2.swift
//  Quiz04
//
//  Created by MinJi Kim on 2023/06/25.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var lblNumber: UILabel!
    var arrNumer = ["10", "20", "30", "40", "50"]
    var indexState = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblNumber.text = arrNumer[indexState]
    }
    
    @IBAction func btnIncrease(_ sender: UIButton) {
        indexState += 1
        
        if indexState >= arrNumer.count {
            indexState = 0
        }
        
        lblNumber.text = arrNumer[indexState]
        
    }

}
