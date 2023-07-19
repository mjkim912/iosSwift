//
//  main.swift
//  Day07
//
//  Created by MinJi Kim on 2023/07/08.
//

import Foundation

// Structure : 구조체 -> Swift에서 Type을 정의

struct Sample {
    // Field, Property
    var sampleProperty: Int = 10        // 가변 프로퍼티
    let fixedSampleProperty: Int = 10   // 불변 프로퍼티
    static var typeProperty: Int = 1000 // 타입 프로퍼티
    
    // 생성자(Constructor)
    
    // Function
    func instanceMethod() {
        print("instance Method")
    }
    
    static func typeMethod() {
        print("type method")
    }
}

// 구조체 사용
var samp: Sample = Sample()
print(samp.sampleProperty)

samp.sampleProperty = 100
print(samp.sampleProperty)

var samp1: Sample = Sample()
print(samp1.sampleProperty)

samp.instanceMethod()

// 자료 공유 목적의 Struct -> static
Sample.typeProperty = 300

print(Sample.typeProperty)

// 학생 구조체
struct Student {
    var name: String = "unknown"
    var `class`: String = "swift"
    
    static func selfIntroduce() {
        print("학생 타입 입니다.")
    }
    
    func selfIntroduce() {
        print("저는 \(`class`)반 \(name) 입니다.")
    }
}

var james: Student = Student()
james.name = "James"
james.class = "스위프트"
james.selfIntroduce()

var cathy: Student = Student()
cathy.name = "Cathy"
cathy.selfIntroduce()


// 클래스(Class)

class Sample1 {
    // Field, Property
    var sampleProperty: Int = 10        // 가변 프로퍼티
    let fixedSampleProperty: Int = 10   // 불변 프로퍼티
    static var typeProperty: Int = 1000 // 타입 프로퍼티
    
    // 생성자(Constructor)
    
    // Function
    func instanceMethod() {
        print("instance Method")
    }
    
    static func typeMethod() {
        print("type method")
    }
}

var samp11: Sample1 = Sample1()
print(samp11.sampleProperty)

// Class와 Structure
// - 클래스와 구조체는 프로그램의 코드를 조직화 하기 위해 일반적으로 사용합니다.
// - 객체지향 프로그램(Object Oriented Program: OOP)의 필수 요소입니다.

// 해상도
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var interlaced = false      // 홀수, 짝수 정하기
    var frameRate = 0.0
    var name: String?           // 초기값이 없다.
    var resolution = Resolution()
}

let someVideoMode = VideoMode()
someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)

// 시험점수 총점 및 평균 출력
class Exam {
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

let st1: Exam = Exam()
st1.input(name: "유비", score: 76, 87, 88)
st1.input(name: "관우", score: 70, 80, 90)

let st2: Exam1 = Exam1()
st2.input(name: "장비", score: 56, 87, 89)
