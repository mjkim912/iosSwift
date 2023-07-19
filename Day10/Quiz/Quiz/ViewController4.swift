//
//  ViewController4.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/16.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var imgPinch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Pinch Setup
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController4.doPinch(_ :)))
        self.view.addGestureRecognizer(pinch)
    }

    // pinch : 확대나 축소. 이미지를 변형시키는 것.
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        imgPinch.transform = imgPinch.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1
    }
}
