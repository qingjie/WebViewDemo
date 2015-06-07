//
//  ViewController.swift
//  WebViewDemo
//
//  Created by qingjiezhao on 6/6/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var webView: UIWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadHtml(sender: AnyObject) {
        webView.loadHTMLString("<html><body><h1><tr><td>qingjie</td></tr></h1></body></html>", baseURL: nil)
    }
   
    @IBAction func localHTMLFile(sender: AnyObject) {
        webView.loadRequest(NSURLRequest(URL:NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Accessing Google Services Using the OAuth 2.0 Protocol - Tuts+ Code Tutorial", ofType: "html")!)!))
    }

    @IBAction func httpURL(sender: AnyObject) {
        var url = NSURL(string: "http://www.coach360.com")
        webView.loadRequest(NSURLRequest(URL: url!))
    }
}

