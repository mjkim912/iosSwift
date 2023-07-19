//
//  main.swift
//  Day05
//
//  Created by MinJi Kim on 2023/07/01.
//

import Foundation

// Set(집합)
let houseAnimals: Set = ["dog", "cat"]
let farmAnimals: Set = ["cow", "chicken", "sheep", "dog", "cat"]
let cityAnimals: Set = ["duck", "rabbit"]

// houseAnimals이 farmAnimals의 부분집합인가?
print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
//연결된 것이 없는가?
print(farmAnimals.isDisjoint(with: cityAnimals))

// if문 (Conditional Statement)
let someInteger = 100

if someInteger == 100 {
    print("100점")
} else {
    print("100점이 아님")
}

if someInteger < 100 {
    print("100점 미만")
} else if someInteger > 100 {
    print("100점 초과")
} else {
    print("100점")
}

var isCar = true
var isNew = true

if isCar, isNew {
    print("New Car")
} else {
    print("Old Car")
}

let aNum = 7
if aNum % 2 == 0 {
    print("짝수")
} else {
    print("홀수")
}

// Switch 조건문
let personAge = 14
if personAge < 1 {
    print("baby")
} else if personAge < 3 {
    print("toddler")
} else if personAge < 5 {
    print("preschooler")
} else if personAge < 13 {
    print("gradeschooler")
} else if personAge < 18 {
    print("teen")
} else {
    print("adult")
}

switch personAge {
case 0..<1: print("baby")
case 1..<3: print("toddler")
case 3..<5: print("preschooler")
case 5..<13: print("gradeschooler")
case 13..<18: print("teen")
default: print("adult")
}

let someCharacter: Character = "z"
switch someCharacter {
case "a": print("The first letter of the alphabet")
case "z": print("The last letter of the alphabet")
default: print("Some other character")
}

switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}

// Tuple과 Switch 조건문
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin.")
case (_, 0):                                    // 언더바 : 정해진 값이 없다. 혹은 비교하지 않을 것이다.
    print("\(somePoint) is on the x-axis.")
case (0, _):
    print("\(somePoint) is on the y-axis.")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box.")
default:
    print("\(somePoint) is outside the box.")
}

/*
 이름, 국어, 영어, 수학 변수를 만들고 값을 입력한 후
 총점, 평균, 등급을 계산하여 출력하기
 */

let name = "유비"
let kor = 91
let eng = 97
let mat = 95

var tot = kor + eng + mat
var avg = Double(tot) / 3

print("이름 : \(name)")
print("국어 : \(kor)")
print("영어 : \(eng)")
print("수학 : \(mat)")
print("총점 : \(tot)")
print("평균 : \(String(format: "%.2f", avg))")

// 점수등급(수, 우, 미, 양, 가)을 if문으로 출력해보기
var grade: String = ""
if avg >= 90 {
    grade = "수"
} else if avg >= 80 {
    grade = "우"
} else if avg >= 70 {
    grade = "미"
} else if avg >= 60 {
    grade = "양"
} else {
    grade = "가"
}

print("점수 등급은 \(grade) 입니다.")

// 점수등급(수, 우, 미, 양, 가)을 switch문으로 출력해보기
// 범위 연산자는 ... 와 ..< 밖에 없다. = 는 못씀
switch avg {
case 101...999: grade = "오타"
case 90..<100: grade = "수"
case 80..<90: grade = "우"
case 70..<80: grade = "미"
case 60..<70: grade = "양"
default: grade = "가"
}
print("점수 등급은 \(grade) 입니다.")

// 점수등급(수, 우, 미, 양, 가)을 삼항연산자 문으로 출력해보기
grade = avg >= 90 ? "수" :
avg >= 80 ? "우" :
avg >= 70 ? "미" :
avg >= 60 ? "양" :
"가"
print("점수 등급은 \(grade) 입니다.")

// 점수등급(수, 우, 미, 양, 가)을 배열과 반복문 출력해보기
var score = [90, 80, 70, 60, 0]
var level = ["수", "우", "미", "양", "가"]

for i in 0..<score.count {
    if avg >= Double(score[i]) {
        grade = level[i]
        break
    }
}
print("점수 등급은 \(grade) 입니다.")

// 반복문
// For-In문 (For-In Loops)
// 반복문을 통한 배열 처리
let names = ["Anna", "Alex", "Brian", "Jack"]

for name in names {
    print("Hello \(name) !")
}

for (index, text) in names.enumerated() {
    print("The name at index \(index) is \(text)")
}

// 반복문을 통한 Dictionary 처리
let numberOfLegs = ["spider":8, "ant":6, "cat":4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)'s have \(legCount) legs.")
}

// 반복문을 통한 범위 연산자 처리
let seq = 1...9
for i in seq {
    print("5 X \(i) \(5 * i)")
}

let seq1 = (1...9).reversed()
for i in seq1 {
    print("5 X \(i) \(5 * i)")
}

// 1부터 10까지 2씩 증가
for i in stride(from: 1, to: 10, by: 2) {
    print(i, terminator: ",")
}
print()

let minutes = 60
let minuteInterval = 5

// to는 포함이 안됨.
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark)
}
// through는 포함.
for tickMark in stride(from: 0, through: minutes, by: minuteInterval) {
    print(tickMark)
}

let strings = ["First String", "Second String", "Third String", "Fourth String"]

for string in strings {
    if string.starts(with: "F") {
        print(string)
    }
}

// break : 반복문 종료
for string in strings {
    if string.starts(with: "T") {
        break
    }
    print(string)
}

// continue
for string in strings {
    if string.starts(with: "F") {
        continue
    }
    print(string)
}

// While문
var startIndex = 0
var endIndex = 100
var sum = 0

while startIndex <= endIndex {
    sum += startIndex
    startIndex += 1
}
print(sum)

startIndex = 0
endIndex = 100
sum = 0

while true {
    sum += startIndex
    startIndex += 1
    
    if startIndex > endIndex {
        break
    }
}
print(sum)

// 1부터 100까지의 수 중 짝수의 합과 홀수의 합은 while 하나로 사용하여 작성하기
startIndex = 0
var oddSum = 0
var evenSum = 0
while true {
    if startIndex % 2 == 0 {
        evenSum += startIndex
    } else {
        oddSum += startIndex
    }
    
    startIndex += 1
    
    if startIndex > endIndex {
        break
    }
}

print("짝수 합 : \(evenSum), 홀수 합 : \(oddSum) , 총 합 : \(evenSum + oddSum)")

// 실습
print("몇 개의 숫자를 더할까요? ", terminator: "")
var inputNum = Int(readLine()!)
var sum2 = 0
if let num: Int = inputNum {
    print("\(num) 개의 숫자를 입력하세요.")
    for _ in 0..<num {
        let n = Int(readLine()!)
        sum2 += n!
    }
    print("입력한 숫자의 총 합은 \(sum2) 입니다.")
} else {
    print("숫자를 입력하세요.")
}

// 선생님 코드
print("몇 개의 숫자를 더할까요? ", terminator: "")
var inpNum = Int(readLine()!)
var sumNum = 0

if let repNum: Int = inpNum {
    print("\(repNum) 개의 숫자를 입력하세요.")
    
    for _ in 1...repNum {
        let innerCount = Int(readLine()!)
        sumNum += innerCount!
    }
    print("입력한 숫자의 합은 \(sumNum) 입니다.")
    
} else {
    print("Input value is wrong.")
}
