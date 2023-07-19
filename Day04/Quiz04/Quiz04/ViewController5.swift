//
//  ViewController5.swift
//  Quiz04
//
//  Created by MinJi Kim on 2023/06/25.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var imgTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgPreview: UIImageView!
    
    var imageName = ["flower_01.png", "flower_02.png", "flower_03.png", "flower_04.png", "flower_05.png", "flower_061.png"]
    
    var numImage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayImage()
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        numImage -= 1
        if numImage < 0 {
            numImage = imageName.count - 1
        }
        
        displayImage()
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        numImage += 1
        if numImage >= imageName.count {
            numImage = 0
        }
        
        displayImage()
    }
    
    func displayImage() {
        imgTitle.text = imageName[numImage]
        
        if let image = UIImage(named: imageName[numImage]) {
            imgView.image = image
            
            // 미리보기 이미지
            let nextIdx = (numImage + 1) % imageName.count
            print(numImage, nextIdx)
            if let preImg = UIImage(named: imageName[nextIdx]) {
                imgPreview.image = UIImage(named: imageName[nextIdx])
            } else {
                imgPreview.image = UIImage(named: "no_image.png")
            }
            
        } else {
            // 이미지가 없을 경우
            imgView.image = UIImage(named: "no_image.png")
        }
        
//        imgView.image = UIImage(named: imageName[numImage])
//
//        let nextIdx = (numImage + 1) % imageName.count
//        imgPreview.image = UIImage(named: imageName[nextIdx])
    }
    
}
