//
//  WebViewController.swift
//  WorldTrotter
//
//  Created by Robert Steiner on 9/12/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("WebViewController loaded its view.")
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.load(URLRequest(url: URL(string: "https://bignerdranch.com/")!))
        view = webView
    }
    
    
}
