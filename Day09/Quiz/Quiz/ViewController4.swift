//
//  ViewController4.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/15.
//

import UIKit
import WebKit

class ViewController4: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    let urlList: [String] = ["www.naver.com",
                             "www.google.com",
                             "www.daum.net",
                             "m.nate.com",
                             "cnn.com",
                             "www.cbs.com"]
    
    let sitesName: [String] = ["네이버", "구글", "다음", "네이트", "cnn", "cbs"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pickerView.dataSource = self
        pickerView.delegate = self
        myWebView.navigationDelegate = self
        
        loadWebPage(url: urlList[0])
    }
    
    func loadWebPage(url: String) {
        let checkUrl = checkUrl(url)
        
        guard let myUrl = URL(string: checkUrl) else {return}
        let myRequest = URLRequest(url: myUrl)
        myWebView.load(myRequest)
    }
    
    func checkUrl(_ url: String) -> String {
        var myUrl = url
        let flag = myUrl.hasPrefix("http://")
        let flag2 = myUrl.hasPrefix("https://")
        
        if !(flag || flag2) {
            myUrl = "https://" + myUrl
        }
        
        return myUrl
    }
    
}

extension ViewController4: UIPickerViewDataSource {
    // col
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // row
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return urlList.count
    }
}

extension ViewController4: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //return urlList[row]
        return sitesName[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        loadWebPage(url: urlList[row])
    }
}

extension ViewController4: WKNavigationDelegate {
    // Indicator 시작
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    
    // Indicator 종료
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    
    // Error 발생
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
}
