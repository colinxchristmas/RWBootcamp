//
//  WikiViewController.swift
//  RGB_Picker
//
//  Created by Colin Christmas on 5/31/20.
//  Copyright © 2020 Colin Christmas. All rights reserved.
//

import UIKit
import WebKit

class WikiViewController: UIViewController, WKUIDelegate {
    
  @IBOutlet var webView: WKWebView!
  
  override func loadView() {
      let webConfiguration = WKWebViewConfiguration()
      webView = WKWebView(frame: .zero, configuration: webConfiguration)
      webView.uiDelegate = self
      view = webView
  }
  
    override func viewDidLoad() {
      super.viewDidLoad()
        
      let myUrl = URL(string: "https://en.wikipedia.org/wiki/RGB_color_model")
      let request = URLRequest(url: myUrl!)
      webView.load(request)
    }
  
  @IBAction func closeButtonTapped(_sender: Any) {
    self.dismiss(animated: true)
  }
}
