//
//  main.swift
//  Day08
//
//  Created by MinJi Kim on 2023/07/09.
//

import Foundation

// Extension
// - Extension은 구조체(Struct), Class에 새로운 기능을 추가할 수 있는 기능입니다.

// Extension으로 Int연산에 Property 추가

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isEven)
print(1.isOdd)

var number: Int = 3
print(number.isEven)
