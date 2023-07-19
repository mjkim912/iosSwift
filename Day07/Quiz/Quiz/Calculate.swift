//
//  Calculate.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/08.
//

import Foundation

class Calculate {
    var num1: Int = 0
    var num2: Int = 0
    var sum: Int = 0
    
    func SetNum(num1: Int, num2: Int) {
        self.num1 = num1
        self.num2 = num2
        Sum()
    }
    
    func GetResult() -> String {
        "덧셈 결과는 \(sum) 입니다."
    }
    
    func Sum() {
        self.sum = num1 + num2
    }
}
