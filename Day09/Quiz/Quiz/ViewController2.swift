//
//  ViewController2.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/15.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var lblCurTime: UILabel!
    @IBOutlet weak var lblAlarmTime: UILabel!
    
    let interval = 1.0
    let timeSelector: Selector = #selector(ViewController2.updateTime)
    var alarmTime: String?
    var isAlertOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblAlarmTime.text = "알람 시간을 선택하세요."
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
        
        lblCurTime.text = "현재시간 : \(formatter.string(from: date as Date))"
        
        formatter.dateFormat = "a hh:mm"
        let curTime = formatter.string(from: date as Date)
        
        if curTime == alarmTime {
            if !isAlertOn {
                isAlertOn = true
                
                let alertAlarm = UIAlertController(title: "알림", message: "설정된 시간입니다 !!!", preferredStyle: .alert)
                let actionDefault = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: {ACTION in
                    //self.alarmTime = ""
                    //self.isAlertOn = false
                })
                
                alertAlarm.addAction(actionDefault)
                present(alertAlarm, animated: true)
            }
            
        } else {
            isAlertOn = false
        }
    }
    
}
