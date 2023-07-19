//
//  main.swift
//  Day04
//
//  Created by MinJi Kim on 2023/06/25.
//

import Foundation

// Optional
// : 데이터가 있을 수도 있고 없을 수도 있다.
// : nil값을 포함할 수도 있고 안 할 수도 있다.

let constantNum = 100
//let optionalNum = nil
var optionalNum: Int? = nil // ?가 nil 데이터이다.
let optionalNum1: Int! = nil
//print(optionalNum)
optionalNum = 10
//print(optionalNum)

// Optional Unwrapping
// - Optional Binding
// : nil check + 안전한 값 추출, memory 안의 변수 값이 있는지 없는지 확인하고 추출
// - Forced Unwrapping
// : !로 무조건 unwrapping

var myName: String? = nil
myName = "Kim"

if let name: String = myName {
    print(name)
} else {
    print("myName is nil")
}

var myName2: String? = "James"
var yourName2: String? = nil

if let name = myName2, let friend = yourName2 {
    print("\(name) and \(friend)")
} else {
    print("found nil")
}

/*
 Collection : 여러 값들을 묶어서 하나의 변수로 사용
 1) Array : 순서가 있는 리스트 컬렉션
 2) Dictionary : Key와 Value의 쌍으로 이루어진 컬렉션
 3) Set : 순서가 없고, Data가 유일한(unique) 컬렉션
 */

// Array
// 빈 Int Array 생성
//var intVariable: Array<Int> = Array<Int>()
var intVariable: [Int] = []
intVariable.append(1)
intVariable.append(100)
intVariable.append(10)

print(intVariable)
print(intVariable.contains(100))
print(intVariable.contains(90))
print(intVariable[0])
print(intVariable[0...1][0])

intVariable[0] = 1000
intVariable.remove(at: 0)
intVariable.removeLast()
intVariable.removeAll()

var doubleArray: [Double] = []
var stringArray: [String] = []

// 문자열 배열
var shoppingList: [String] = ["Eggs", "Milk"]
for i in 0..<shoppingList.count {
    print(shoppingList[i])
}

for i in shoppingList {
    print(i)
}

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is NOT empty.")
}

// 배열에 데이터 추가
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

print(shoppingList, shoppingList.count)

// 배열 데이터 수정
shoppingList[0] = "Egg"

// 배열의 특정 위치 데이터 변경 및 제거
shoppingList[4...6] = ["Banana", "Apple"]   // 3개를 2개로 변경 및 제거

// 배열의 삽입
shoppingList.insert("Mayple Syrup", at: 0)
print(shoppingList, shoppingList.count)

// 배열의 값과 인덱스가 필요한 경우
for (index, value) in shoppingList.enumerated() {
    print(index, value)
}

print("단을 입력하세요 : ", terminator: "")    // 기본값이 \n 이라서 안쓰면 다음줄에 입력이 된다.
var temp = Int(readLine()!)

if let dan: Int = temp {
    print("=== 구구단 \(dan)단 출력 ===")
    for i in 1...9 {
        print("\(dan) X \(i) = \(dan * i)")
    }
} else {
    // 숫자가 아닌 문자를 입력해도 이쪽으로 빠짐.
    print("Input value is wrong.")
}


// Dictionary(Map)
// Key가 String이고 Value가 Int인 비어있는 Dictionary 생성

var tempArray: [Int] = []
//var scoreDictionary: Dictionary<String, Int> = [String:Int]()
var scoreDictionary: [String:Int] = [:]
scoreDictionary["유비"] = 100
scoreDictionary["관우"] = 90
scoreDictionary["장비"] = 80
print(scoreDictionary)
print(scoreDictionary["유비"]!)


// Set
var oddDigits: Set = [1,3,5,7,9]
var evenDigits: Set = [0,2,4,6,8]
var singleDigitPrimeNumbers: Set = [2,3,5,7]

oddDigits.insert(1)
print(oddDigits)
print(oddDigits.sorted())

// 합집합
print(oddDigits.union(evenDigits).sorted())

// 교집합
print(oddDigits.intersection(evenDigits).sorted())

// 여집합
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

// 차집합
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
