//
//  ViewController2.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/16.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imgViewUp: UIImageView!
    @IBOutlet weak var imgViewDown: UIImageView!
    @IBOutlet weak var imgViewLeft: UIImageView!
    @IBOutlet weak var imgViewRight: UIImageView!
    
    var imgLeft: [UIImage] = []
    var imgRight: [UIImage] = []
    var imgUp: [UIImage] = []
    var imgDown: [UIImage] = []
    
    let numOfTouches = 2    // 두 손가락
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Image 추가하기
        makeImages()
        
        // 초기화면 Image
        imgViewUp.image = imgUp[0]
        imgViewDown.image = imgDown[0]
        imgViewLeft.image = imgLeft[0]
        imgViewRight.image = imgRight[0]
        
        // 한 손가락 Gesture 구성
        makeSingleTouch()
        
        // 두 손가락 Gesture 구성
        makeDoubleTouch()
    }
    
    func makeImages() {
        imgUp.append(UIImage(named: "arrow-up-black.png")!)
        imgUp.append(UIImage(named: "arrow-up-red.png")!)
        imgUp.append(UIImage(named: "arrow-up-green.png")!)         // 두 손가락 터치
        
        imgDown.append(UIImage(named: "arrow-down-black.png")!)
        imgDown.append(UIImage(named: "arrow-down-red.png")!)
        imgDown.append(UIImage(named: "arrow-down-green.png")!)     // 두 손가락 터치
        
        imgLeft.append(UIImage(named: "arrow-left-black.png")!)
        imgLeft.append(UIImage(named: "arrow-left-red.png")!)
        imgLeft.append(UIImage(named: "arrow-left-green.png")!)     // 두 손가락 터치
        
        imgRight.append(UIImage(named: "arrow-right-black.png")!)
        imgRight.append(UIImage(named: "arrow-right-red.png")!)
        imgRight.append(UIImage(named: "arrow-right-green.png")!)   // 두 손가락 터치
    }

    func makeSingleTouch() {
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController2.respondToSwipeGesture(_ :)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController2.respondToSwipeGesture(_ :)))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController2.respondToSwipeGesture(_ :)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController2.respondToSwipeGesture(_ :)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
    }
    
    func makeDoubleTouch() {
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController2.respondToSwipeGestureMulti(_ :)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        swipeUp.numberOfTouchesRequired = numOfTouches                  // 두 손가락
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController2.respondToSwipeGestureMulti(_ :)))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        swipeDown.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController2.respondToSwipeGestureMulti(_ :)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        swipeLeft.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController2.respondToSwipeGestureMulti(_ :)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        swipeRight.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        // 두 방향 사이를 애매하게 잡을 경우 버그가 생겨서 if let으로 감싼다.
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            imgViewUp.image = imgUp[0]
            imgViewDown.image = imgDown[0]
            imgViewLeft.image = imgLeft[0]
            imgViewRight.image = imgRight[0]
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.up:
                imgViewUp.image = imgUp[1]
            case UISwipeGestureRecognizer.Direction.down:
                imgViewDown.image = imgDown[1]
            case UISwipeGestureRecognizer.Direction.left:
                imgViewLeft.image = imgLeft[1]
            case UISwipeGestureRecognizer.Direction.right:
                imgViewRight.image = imgRight[1]
            default:
                break
            }
        }
    }
    
    // test : option + shift
    @objc func respondToSwipeGestureMulti(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            imgViewUp.image = imgUp[0]
            imgViewDown.image = imgDown[0]
            imgViewLeft.image = imgLeft[0]
            imgViewRight.image = imgRight[0]
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.up:
                imgViewUp.image = imgUp[2]
            case UISwipeGestureRecognizer.Direction.down:
                imgViewDown.image = imgDown[2]
            case UISwipeGestureRecognizer.Direction.left:
                imgViewLeft.image = imgLeft[2]
            case UISwipeGestureRecognizer.Direction.right:
                imgViewRight.image = imgRight[2]
            default:
                break
            }
        }
    }
}
