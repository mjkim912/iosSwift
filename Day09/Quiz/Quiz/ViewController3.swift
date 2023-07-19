//
//  ViewController3.swift
//  Quiz
//
//  Created by MinJi Kim on 2023/07/15.
//

import UIKit
import WebKit   // ***** WEB *****

class ViewController3: UIViewController {

    @IBOutlet weak var tfUrl: UITextField!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myWebView.navigationDelegate = self
        
        loadWebPage(url: "https://www.naver.com")
    }
    
    func loadWebPage(url: String) {
        // URL 함수 : 내 주소로 정보를 받을 수 있게 url에 내 주소를 함께 보낸다.
        guard let myUrl = URL(string: url) else {return}
        let myRequest = URLRequest(url: myUrl)
        myWebView.load(myRequest)
    }
    
    @IBAction func btnGo(_ sender: UIButton) {
        guard let urlTf = tfUrl.text else {return}
        let myUrl = checkUrl(urlTf)
        tfUrl.text = ""
        loadWebPage(url: myUrl)
    }
    
    func checkUrl(_ url: String) -> String {
        var strUrl = url
        let flag = strUrl.hasPrefix("http://")
        let flag2 = strUrl.hasPrefix("https://")
        
        if !(flag || flag2) {
            strUrl = "https://" + strUrl
        }
        
        return strUrl
    }
    
    @IBAction func btnSite1(_ sender: UIButton) {
        loadWebPage(url: "https://www.google.com")
    }
    
    @IBAction func btnSite2(_ sender: UIButton) {
        loadWebPage(url: "https://www.daum.net")
    }
    
    @IBAction func btnHtml(_ sender: UIButton) {
        let htmlString = """
            <html>
                <head>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                </head>
                <body>
                    <h1>HTML String</h1>
                    <p>String 변수를 이용한 웹페이지</p>
                    <p><a href="https://jtbc.co.kr">JTBC</a>로 이동</p>
                </body>
            </html>
        """
        
        myWebView.loadHTMLString(htmlString, baseURL: nil)
    }
    
    @IBAction func btnFile(_ sender: UIButton) {
        let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html")
        guard let filePath2 = filePath else {return}
        
        let myUrl = URL(filePath: filePath2)
        let myRequest = URLRequest(url: myUrl)
        myWebView.load(myRequest)
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    
    @IBAction func btnRefresh(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension ViewController3: WKNavigationDelegate {
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
