//
//  ViewController1.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/09.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblAlarmTime: UILabel!
    
    let interval = 1.0
    let timeSelector: Selector = #selector(ViewController1.updateTime)
    var count = 0
    var alarmTime: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    @IBAction func changeAlarmTime(_ sender: UIDatePicker) {
        let datePicker = sender
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        
        lblAlarmTime.text = "선택시간 : \(formatter.string(from: datePicker.date))"
        
        formatter.dateFormat = "a hh:mm"
        alarmTime = formatter.string(from: datePicker.date)
    }
    
    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        
        lblCurrentTime.text = "현재시간 : \(formatter.string(from: date as Date))"
        
        count += 1
        formatter.dateFormat = "a hh:mm"
        let curTime = formatter.string(from: date as Date)
        
        if (alarmTime == curTime) {
            if count % 2 == 0 {
                view.backgroundColor = UIColor.red
            } else {
                view.backgroundColor = UIColor.blue
            }
        } else {
            view.backgroundColor = UIColor.white
        }
    }
    
   

}
