//
//  ViewController.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/09.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0  // Timer Interval (초)
    let timeSelector: Selector = #selector(DatePickerViewController.updateTime)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        
        lblPickerTime.text = "선택시간 : \(formatter.string(from: datePickerView.date))"
    }
    
    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"  // 년도 요일 오전오후 시간
        lblCurrentTime.text = "현재시간 : \(formatter.string(from: date as Date))"
    }
}

