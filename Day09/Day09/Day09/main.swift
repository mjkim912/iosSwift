//
//  main.swift
//  Day09
//
//  Created by MinJi Kim on 2023/07/15.
//

import Foundation

// Closure

// Function
func sumFunction(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

var sumResult = sumFunction(num1: 10, num2: 34)
print(sumResult)

// Closure
var sumClosure: (Int, Int) -> Int = {
    (num1: Int, num2: Int) -> Int in
    return num1 + num2
}

sumResult = sumClosure(12, 30)
print(sumResult)
