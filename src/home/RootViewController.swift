//
//  SectionsTableViewController.swift
//  QorDemo
//
//  Created by Neo Chow on 21/3/2016.
//  Copyright © 2016 NeoChow. All rights reserved.
//

import UIKit
import Cartography

class RootViewController: UIViewController, UIWebViewDelegate {

    var webView: UIWebView = UIWebView(frame: CGRectZero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Root"
        edgesForExtendedLayout = .None
        view.backgroundColor = UIColor.cyanColor()
        navigationController!.navigationBarHidden = true
        
        view.addSubview(webView)
        webView.delegate = self
        constrain(webView) { (w) in
            w.top == w.superview!.top
            w.bottom == w.superview!.bottom
            w.leading == w.superview!.leading
            w.trailing == w.superview!.trailing
        }
        
        let req = NSURLRequest(URL:
            NSURL(string: "/admin",
            relativeToURL:NSURL(string: "http://localhost:7000")!
            )!)
        webView.loadRequest(req)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        //
        
        return true
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        //
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        //
    }
}
