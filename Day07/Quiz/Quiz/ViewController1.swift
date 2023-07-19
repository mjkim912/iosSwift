//
//  ViewController1.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/08.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var lblQuote: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    var quote: [Quote] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dataInit()
        lblQuote.text = quote[0].quote
        lblName.text = quote[0].name
    }
    
    @IBAction func btnNew(_ sender: UIButton) {
        let num = Int.random(in: 0..<quote.count)
        lblQuote.text = quote[num].quote
        lblName.text = quote[num].name
    }
    
    func dataInit() {
        quote.append(Quote(quote: "삶이 있는 한 희망은 있다.", name: "키케로"))
        quote.append(Quote(quote: "산다는것 그것은 치열한 전투이다.", name: "로망로랑"))
        quote.append(Quote(quote: "하루에 3시간을 걸으면 7년 후에 지구를 한바퀴 돌 수 있다.", name: "사무엘존슨"))
        quote.append(Quote(quote: "언제나 현재에 집중할수 있다면 행복할것이다.", name: "파울로 코엘료"))
        quote.append(Quote(quote: "진정으로 웃으려면 고통을 참아야하며 , \n나아가 고통을 즐길 줄 알아야 해", name: "찰리 채플린"))
        quote.append(Quote(quote: "직업에서 행복을 찾아라. \n아니면 행복이 무엇인지 절대 모를 것이다.", name: "엘버트 허버드"))
        quote.append(Quote(quote: "신은 용기있는자를 결코 버리지 않는다.", name: "켄러"))
        quote.append(Quote(quote: "피할수 없으면 즐겨라.", name: "로버트 엘리엇"))
        quote.append(Quote(quote: "먼저 자신을 비웃어라. \n다른 사람이 당신을 비웃기 전에.", name: "엘사 맥스웰"))
        quote.append(Quote(quote: "행복한 삶을 살기위해 필요한 것은 거의 없다.", name: "마르쿠스 아우렐리우스 안토니우스"))
    }
}
