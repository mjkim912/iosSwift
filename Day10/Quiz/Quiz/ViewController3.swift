//
//  ViewController3.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/16.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var images = ["flower_01.png", "flower_02.png", "flower_03.png", "flower_04.png", "flower_05.png", "flower_06.png"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        imgView.image = UIImage(named: images[pageControl.currentPage])
        
        makeSingleTouch()
    }

    func makeSingleTouch() {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController3.respondToSwipeGesture(_ :)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController3.respondToSwipeGesture(_ :)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        // 두 방향 사이를 애매하게 잡을 경우 버그가 생겨서 if let으로 감싼다.
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            //var page = pageControl.currentPage
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.left:
//                page += 1
//                page = page >= images.count ? images.count - 1 : page
                pageControl.currentPage += 1
            case UISwipeGestureRecognizer.Direction.right:
//                page -= 1
//                page = page < 0 ? 0 : page
                pageControl.currentPage -= 1
            default:
                break
            }
            
            imgView.image = UIImage(named: images[pageControl.currentPage])
            //pageControl.currentPage = page
        }
    }

}
