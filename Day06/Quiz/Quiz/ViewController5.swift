//
//  ViewController5.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/02.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblImgResize: UILabel!
    
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOn
    }

    @IBAction func switchImgResize(_ sender: UISwitch) {
        /*
        let scale: CGFloat = 2.0
        var newWidth: CGFloat?
        var newHeight: CGFloat?
        
        if sender.isOn {
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            //lblImgResize.text = "전구 확대"
        } else {
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            //lblImgResize.text = "전구 축소"
        }
        
        imgView.frame.size = CGSize(width: newWidth!, height: newHeight!)
         */
        
        resizeImage(resize: sender.isOn)
        
    }
    @IBAction func switchOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
    
    // Image 크기 조절
    func resizeImage(resize: Bool) {
        let scale: CGFloat = 2.0
        var newWidth: CGFloat?
        var newHeight: CGFloat?
        
        if resize {
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            
        } else {
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
        }
        
        imgView.frame.size = CGSize(width: newWidth!, height: newHeight!)
    }
    
}
