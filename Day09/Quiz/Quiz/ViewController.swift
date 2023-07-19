//
//  ViewController.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAlert(_ sender: UIButton) {
        // UIAlertController 초기화
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        // UIAlertAction 설정
        let actionDefault = UIAlertAction(title: "Action Default", style: .default)
        let actionDestructive = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {ACTION in
            print("destructive action called")
        })
        let actionCancel = UIAlertAction(title: "Action Cancel", style: .cancel)
        
        // UIAlertController에 UIAlertAction 추가
        testAlert.addAction(actionDefault)
        testAlert.addAction(actionDestructive)
        testAlert.addAction(actionCancel)
        
        // 화면 보여주기
        present(testAlert, animated: true)
    }
    
    @IBAction func btnActionSheet(_ sender: UIButton) {
        // UIAlertController 초기화
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        
        // UIAlertAction 설정
        let actionDefault = UIAlertAction(title: "Action Default", style: .default)
        let actionDestructive = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {ACTION in
            print("destructive action called")
        })
        let actionCancel = UIAlertAction(title: "Action Cancel", style: .cancel)
        
        // UIAlertController에 UIAlertAction 추가
        testAlert.addAction(actionDefault)
        testAlert.addAction(actionDestructive)
        testAlert.addAction(actionCancel)
        
        // 화면 보여주기
        present(testAlert, animated: true)
    }
    
}

