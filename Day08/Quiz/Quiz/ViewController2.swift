//
//  ViewController2.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/09.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imgTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgTitle2: UILabel!
    @IBOutlet weak var imgView2: UIImageView!
    
    var imageName = ["flower_01.png", "flower_02.png", "flower_03.png", "flower_04.png", "flower_05.png", "flower_06.png"]
    
    var numImage1 = 0
    var numImage3 = 0
    let interval1 = 1.0
    //let interval3 = 3.0
    
    let timeSelect: Selector = #selector(ViewController2.updateTime)
    //let timeSelect3: Selector = #selector(ViewController2.updateTime3)
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval1, target: self, selector: timeSelect, userInfo: nil, repeats: true)
        //Timer.scheduledTimer(timeInterval: interval3, target: self, selector: timeSelect3, userInfo: nil, repeats: true)
        
        // 1초
        imgView.image = UIImage(named: imageName[numImage1])
        imgTitle.text = imageName[numImage1]
        
        // 3초
        imgView2.image = UIImage(named: imageName[numImage3])
        imgTitle2.text = imageName[numImage3]
    }
    
    @objc func updateTime() {
        count += 1
        
        if count % 3 == 0 {
            threeSecImg()
        }
        
        oneSecImg()
    }
    
    func oneSecImg() {
        numImage1 += 1
        if numImage1 >= imageName.count {
            numImage1 = 0
        }
        
        imgView.image = UIImage(named: imageName[numImage1])
        imgTitle.text = imageName[numImage1]
    }
    
    func threeSecImg() {
        numImage3 += 1
        if numImage3 >= imageName.count {
            numImage3 = 0
        }
        
        imgView2.image = UIImage(named: imageName[numImage3])
        imgTitle2.text = imageName[numImage3]
    }
    
    @objc func updateTime3() {
        numImage3 += 1
        if numImage3 >= imageName.count {
            numImage3 = 0
        }
        
        imgView2.image = UIImage(named: imageName[numImage3])
        imgTitle2.text = imageName[numImage3]
    }

}
