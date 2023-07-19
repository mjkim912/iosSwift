//
//  ViewController.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfKor: UITextField!
    @IBOutlet weak var tfMat: UITextField!
    @IBOutlet weak var tfEng: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalculate(_ sender: UIButton) {
        // Optional Binding
        // 느낌표만 제거
        guard let strKorean = tfKor.text else {return}
        guard let strMath = tfMat.text else {return}
        guard let strEnglish = tfEng.text else {return}
        
        // 숫자 필드 check
        if strKorean.isEmpty || strMath.isEmpty || strEnglish.isEmpty {
            lblMessage.text = "숫자를 확인하세요"
        } else {
            let avg = (Double(strKorean)! + Double(strMath)! + Double(strEnglish)!) / 3
            
            let grade = avg >= 90 ? "수" :
                        avg >= 80 ? "우" :
                        avg >= 70 ? "미" :
                        avg >= 60 ? "양" : "가"
            
            lblMessage.text = "평균점수는 \(String(format: "%.1f", avg)) 이고 점수등급은 \(grade) 입니다."
        }
        
        /*
        guard let intKor = Int(tfKor.text!) else {
            lblMessage.text = "국어 점수를 확인해주세요."
            return
        }
        guard let intMat = Int(tfMat.text!) else {
            lblMessage.text = "수학 점수를 확인해주세요."
            return
        }
        guard let intEng = Int(tfEng.text!) else {
            lblMessage.text = "영어 점수를 확인해주세요."
            return
        }
        
        var avg = Double((intKor + intMat + intEng) / 3)
        var grade = avg >= 90 ? "수" :
                    avg >= 80 ? "우" :
                    avg >= 70 ? "미" :
                    avg >= 60 ? "양" : "가"
        
        lblMessage.text = "평균점수는 \(String(format: "%.1f", avg)) 이고 점수등급은 \(grade) 입니다."
         */
    }
    
}

