//
//  main.swift
//  Day03
//
//  Created by MinJi Kim on 2023/06/24.
//

import Foundation

// 비교 연산자
print(1 == 1)

let name = "world"

if name == "world" {
    print("Hello \(name)!")
} else {
    print("I'm sorry \(name), but I don't recognize you.")
}

// 앞에 있는 숫자부터 비교한다. 같으면 뒤를 비교한다.
print((1, "zebra") < (2, "apple"))
print((3, "apple") < (3, "bird"))
print((4, "dog") == (4, "dog"))
print(("blue", -1) < ("purple", 1))

// 일반 조건 연산자
let contentHeight = 40
let hasHeader = true
let rowHeight: Int

if hasHeader {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}

print(rowHeight)

// 삼항 조건 연산자
let contentHeight1 = 40
let hasHeader1 = true
let rowHeight1 = contentHeight1 + (hasHeader1 ? 50 : 20)
print(rowHeight1)

// nil병합 연산자
// nil은 값의 부재를 의미한다.
let defaultColorName = "red"
var userDdefinedColorName: String?  // ?는 nil을 뜻한다.
var colorNameToUse = userDdefinedColorName ?? defaultColorName
print(colorNameToUse)

// 닫힌 범위 연산자
for i in 1...10 {
    print(i)
}

// 범위 연산자를 이용한 합계 구하기
var sum: Int = 0
for i in 1...10 {
    sum += i
}
print(sum)

for dan in 2...9 {
    for i in 1...9 {
        print("\(dan) X \(i) = \(dan * i)")
    }
    print()
}

// 반닫힌 범위 연산자 사용하기
for i in 1..<10 {
    print("2 X \(i) = \(2 * i)")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
print(names)
print(names.count)

for i in 0..<names.count {
    print("Person \(i+1) is called \(names[i])")
}

// 논리 연산자
// 논리 부정 연산자
let allowedEntry = false

if !allowedEntry {
    print("Access Denied!")
}

// 논리 곱 연산자 (AND)
let enteredDoorCode = true
let passedRetinaScan = false

if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("Access Denied!")
}

// 논리 합 연산자 (OR)
if enteredDoorCode || passedRetinaScan {
    print("Welcome!")
} else {
    print("Access Denied!")
}
