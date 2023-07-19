//
//  ViewController1.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/15.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var imgLamp: UIImageView!
    
    var imgOn: UIImage?
    var imgOff: UIImage?
    var imgRemove: UIImage?
    var isLampOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        imgRemove = UIImage(named: "lamp_remove.png")
        
        imgLamp.image = imgOn
    }
    
    @IBAction func btnLampOn(_ sender: UIButton) {
        if isLampOn {
            let alertLampOn = UIAlertController(title: "경고", message: "현재 On 상태 입니다.", preferredStyle: .alert)
            
            let actionDefault = UIAlertAction(title: "네, 알겠습니다.", style: .default)
            
            alertLampOn.addAction(actionDefault)
            
            present(alertLampOn, animated: true)
            
        } else {
            imgLamp.image = imgOn
            isLampOn = true
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        if isLampOn {
            let alertLampOff = UIAlertController(title: "램프 끄기", message: "램프를 끄겠습니까?", preferredStyle: .alert)
            
            let actionYes = UIAlertAction(title: "네", style: .default, handler: {ACTION in
                self.imgLamp.image = self.imgOff
                self.isLampOn = false
            })
            let actionNo = UIAlertAction(title: "아니오", style: .default)
            
            alertLampOff.addAction(actionYes)
            alertLampOff.addAction(actionNo)
            
            present(alertLampOff, animated: true)
            
        } else {
            let alertLampOn = UIAlertController(title: "경고", message: "현재 Off 상태 입니다.", preferredStyle: .alert)
            
            let actionDefault = UIAlertAction(title: "네, 알겠습니다.", style: .default)
            
            alertLampOn.addAction(actionDefault)
            
            present(alertLampOn, animated: true)
        }
    }
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
        let alertLampRemove = UIAlertController(title: "램프 제거?", message: "램프를 제거 할까요?", preferredStyle: .alert)
        
        let actionOff = UIAlertAction(title: "아니오, 끕니다!", style: .default, handler: {ACTION in
            self.imgLamp.image = self.imgOff
            self.isLampOn = false
        })
        let actionOn = UIAlertAction(title: "아니오, 켭니다!", style: .default, handler: {ACTION in
            self.imgLamp.image = self.imgOn
            self.isLampOn = true
        })
        let actionRemove = UIAlertAction(title: "네, 제거합니다!", style: .default, handler: {ACTION in
            self.imgLamp.image = self.imgRemove
            self.isLampOn = false
        })
        
        alertLampRemove.addAction(actionOff)
        alertLampRemove.addAction(actionOn)
        alertLampRemove.addAction(actionRemove)
        
        present(alertLampRemove, animated: true)
    }
    
}
