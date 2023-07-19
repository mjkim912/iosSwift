//
//  ViewController1.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/16.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    let numbers: [Int] = [Int](1...10)
    let numPages = 10                   // currentPage 이용하기
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = numbers.count
//        pageControl.numberOfPages = numPages
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.brown
        pageControl.currentPageIndicatorTintColor = UIColor.yellow
        
        indicateNum(num: numbers[pageControl.currentPage])
        
//        currentPage 이용하기
//        lblNumber.text = String(pageControl.currentPage + 1)
//        lblColor()
    }

    func indicateNum(num: Int) {
        if num % 2 == 0 {
            lblNumber.textColor = UIColor.blue
        } else {
            lblNumber.textColor = UIColor.red
        }
        
        lblNumber.text = String(num)
    }
    
    func lblColor() {
        if Int(lblNumber.text!)! % 2 == 0 {
            lblNumber.textColor = UIColor.blue
        } else {
            lblNumber.textColor = UIColor.red
        }
    }
    
    @IBAction func pageChange(_ sender: UIPageControl) {
        indicateNum(num: numbers[pageControl.currentPage])
//        lblNumber.text = String(pageControl.currentPage + 1)
//        lblColor()
    }
    
}
