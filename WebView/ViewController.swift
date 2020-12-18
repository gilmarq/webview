//
//  ViewController.swift
//  WebView
//
//  Created by Gilmar Queiroz on 17/12/20.
//  Copyright © 2020 Gilmar Queiroz. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    private var websiteAddress: String {
      return "https://terra.com.br"
    }
    
    // MARK: Outlet
    @IBOutlet weak var btWebView: UIButton!
    
    
    // MARK: cicle view
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    
    }
    // MARK: Func
    @IBAction func ActionWebView(_ sender: UIButton) {
        
        self.goToWebview()
    }
    
    lazy var webView: WKWebView = {
        self.webView = WKWebView(frame: .zero)
        let web = WKWebView.init(frame: UIScreen.main.bounds)
        let url = URL.init(string: self.websiteAddress)!
        let request = URLRequest.init(url: url)
        web.load(request)
        return web
    }()
//    func addButton() {
//           self.view.addSubview(self.someButton)
//           self.someButton.frame = UIScreen.main.bounds
//           self.someButton.center = self.view.center
//       }
    
    func goToWebview() {
        let controller = UIViewController()
        controller.view.addSubview(self.webView)
        self.present(controller,animated: true)
    }
    
   func setup(){
    btWebView.layer.masksToBounds = true
    btWebView.layer.cornerRadius = 5
    }
    
}

