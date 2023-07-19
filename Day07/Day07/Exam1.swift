//
//  Exam1.swift
//  Day07
//
//  Created by MinJi Kim on 2023/07/08.
//

import Foundation

class Exam1 {
    var name = ""
    var score: [Int] = []
    var tot = 0, avg = 0
    
    func input(name: String, score: Int...) {
        tot = 0
        avg = 0
        self.name = name
        self.score = score
        calc()
        result()
    }
    
    func calc() {
        for i in score {
            tot += i
        }
        avg = tot / score.count
    }
    
    func result() {
        print(name, score, tot, avg)
    }
}
