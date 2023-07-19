//
//  ViewController4.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/02.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    var imgOn: UIImage?     // 켜진 전구 이미지
    var imgOff: UIImage?    // 꺼진 전구 이미지
    var isZoom = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 이미지 파일 연결
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOn
    }
    
    @IBAction func btnResizeImage(_ sender: UIButton) {
        // 이미지 크기를 2배로
        let scale: CGFloat = 2.0
        var newWidth: CGFloat?
        var newHeight: CGFloat?
        
        if isZoom {
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            btnResize.setTitle("Image 확대", for: .normal)
        } else {
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            btnResize.setTitle("Image 축소", for: .normal)
        }
        
        imgView.frame.size = CGSize(width: newWidth!, height: newHeight!)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        // 스위치가 현재 true 상태인가?
//        if sender.isOn {
//            imgView.image = imgOn
//        } else {
//            imgView.image = imgOff
//        }
        
        switch sender.isOn {
        case true:
            imgView.image = imgOn
        default:
            imgView.image = imgOff
        }
    }
    
}
