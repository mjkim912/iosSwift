//
//  ViewController4.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/09.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var lblImageFileName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageFileName = ["w1.jpg", "w2.jpg", "w3.jpg", "w4.jpg", "w5.jpg", "w6.jpg", "w7.jpg", "w8.jpg", "w9.jpg", "w10.jpg"]
    
    var imageArray: [UIImage?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerImage.dataSource = self
        pickerImage.delegate = self
        
        for i in 0..<imageFileName.count {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        lblImageFileName.text = "Selected Item : \(imageFileName[0])"
        imageView.image = imageArray[0]
        
    }
} // ViewController4

extension ViewController4: UIPickerViewDataSource {
    // PickerView의 컬럼 개수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // PickerView의 Row 개수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
}

extension ViewController4: UIPickerViewDelegate {
    // PickerView에 파일명 배치
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageFileName[row]
//    }
    
    
    // PickerView에 thumbnail 배치
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 80, height: 30)
        return imageView
    }
    
    // 선택된 파일명을 이미지로 보이기
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = "Selected Item : \(imageFileName[row])"
        imageView.image = imageArray[row]
    }
    
    // PickerView의 선택 bar  사이즈 조절
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
}
