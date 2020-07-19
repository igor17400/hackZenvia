//
//  MapaDeCalorController.swift
//  MarketPlace
//
//  Created by Igor Lima Rocha Azevedo on 19/07/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit
import WebKit

class MapaDeCalorController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://99d771aafb2f.ngrok.io") {
            let request = URLRequest(url: url)
            webView.load(request)
            webView.allowsBackForwardNavigationGestures = true
        }
    }
}

