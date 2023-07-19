//
//  ViewController5.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/09.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var lblDan: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var tfResult: UITextView!
    
    // 연속된 숫자 배열 선언 방법
    var dan: [Int] = [Int](2...9)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tfResult.isEditable = false
        pickerView.dataSource = self
        pickerView.delegate = self
        
        // 처음 2단 세팅
        lblDan.text = "\(dan[0]) 단"
        calcDan(dan: dan[0])
    }
 
    func calcDan(dan: Int) {
        tfResult.text = ""
        for i in 1...9 {
            tfResult.text += "\(dan) X \(i) = \(dan * i) \n"
        }
    }
}

extension ViewController5: UIPickerViewDataSource {
    // 컬럼 수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // row 수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dan.count
    }
}

extension ViewController5: UIPickerViewDelegate {
    // 선택바 row 이름 세팅
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(dan[row]) 단"
    }
    
    // 선택 된 후 text field에 내용 표시
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        tfResult.text = ""
        lblDan.text = "\(dan[row]) 단"
        
//        for i in 1..<10 {
//            tfResult.text += "\(row + 2) X \(i) = \((row + 2) * i) \n"
//        }
        
        calcDan(dan: dan[row])
    }
}
