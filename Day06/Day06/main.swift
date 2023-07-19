//
//  main.swift
//  Day06
//
//  Created by MinJi Kim on 2023/07/02.
//

import Foundation

/*
 입력한 자릿수 정수의 합을 구하는 프로그램 작성
 Enter an integer(0~9) : 12345678
 Sum of digits = 36
 */

/*
print("Enter an integer(0~9) : ", terminator: "")
let inputNum = Int(readLine()!)
var sum = 0
var remainder = 0

if var repNum: Int = inputNum {
    while repNum != 0 {
        remainder = repNum % 10
        sum += remainder
        repNum /= 10
    }
    
    print("Sum of digits = \(sum)")
    
} else {
    print("Input value is wrong.")
}
 */

// 함수 (function)
// 파라미터(매개변수)가 있는 함수

func integerSum(num1: Int, num2: Int) -> Int {  // 넘겨주는 타입을 이렇게 쓴다. -> 파라미터
    return num1 + num2
}

print(integerSum(num1: 5, num2: 3))  // -> argument (아규먼트)

func greet(person: String) -> String {
    let greeting = "Hello, \(person)"
    return greeting
}

print(greet(person: "Jack"))

// 파라미터가 없는 함수
func sayHelloWorld() -> String {
    return "Hello, World!"
}
print(sayHelloWorld())

func sayHelloWorld2() {
    print("Hello, World2!")
}
sayHelloWorld2()

// 함수호출시 변수명 안보이게
func buildAddress(name: String, address: String, city: String, postalCode: String, country: String) -> String {
    return """
            이름 : \(name)
            주소 : \(address)
            도시 : \(city)
            우편번호 : \(postalCode)
            국가 : \(country)
            """
}

print(buildAddress(name: "Leonardo", address: "5 Convington Square", city: "Birmingham", postalCode: "01224", country: "USA"))

// 언더바 쓰고 한칸 띄우면 호출시 변수명을 가릴 수 있다.
// 주소 : 보여지는 함수, address : 내부적으로 쓰는 변수
// default value 를 지정할 수 있다.
func buildAddress2(_ name: String, 주소 address: String, city: String, postalCode: String, country: String? = "USA") -> String {
    return """
            이름 : \(name)
            주소 : \(address)
            도시 : \(city)
            우편번호 : \(postalCode)
            국가 : \(country ?? "")
            """
}

print(buildAddress2("Jane", 주소: "112", city: "New York", postalCode: "2433"))

// 매개변수 기본값
func greeting(friend: String, me: String = "조조") {
    print("Hellog \(friend)! I'm \(me)")
}

greeting(friend: "장비")
greeting(friend: "장비", me: "유비")

// 시작 숫자부터 끝 숫자까지의 합계를 구하는 함수 만들기
func addRange(start: Int, end: Int) -> String {
    var sum: Int = 0
    for i in start...end {
        sum += i
    }
    
    return "\(start) 부터 \(end) 까지의 합은 \(sum) 입니다."
}

print(addRange(start: 1, end: 100))

// 해당 범위중 짝수와 홀수를 판단하여 합계 구하는 함수 만들기
func decisionRange(type: String, start: Int, end: Int) -> String {
    var sum: Int = 0
    var korType: String = ""
    
    if type == "even" {
        for i in start...end {
            if i % 2 == 0 {
                sum += i
            }
        }
        korType = "짝수"
        
    } else if type == "odd" {
        for i in start...end {
            if i % 2 != 0 {
                sum += i
            }
        }
        korType = "홀수"
        
    } else {
        return "입력된 항목이 잘못되었습니다."
    }
    
    return "\(start)부터 \(end)까지의 수 중 \(korType)의 합은 \(sum) 입니다."
}

print(decisionRange(type: "odd", start: 1, end: 100))


// Overloading : 함수의 이름은 중복되도 매개변수의 개수로 구분이 가능
// 도형의 면적, 둘레를 구하는 함수 (원, 직사각형, 직각삼각형)

// 원의 면적과 둘레
func shape(_ r: Double) {
    let pi = 3.14157
    let area = r * r * pi
    let border = 2 * r * pi
    
    print("원 : \(area), \(border)")
}

// 직사각형의 면적과 둘레
func shape(_ w: Int, _ h: Int) {
    let area = w * h
    let border = (w + h) * 2
    
    print("직사각형 : \(area), \(border)")
}

// 직각삼각형의 면적과 둘레
func shape(_ w: Int, _ h: Int, _ l: Int) {
    let area = w * h / 2
    let border = w + h + l
    
    print("직각삼각형 : \(area), \(border)")
}

shape(5)
shape(5, 6)
shape(5, 6, 7)
