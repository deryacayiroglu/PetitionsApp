//
//  DetailViewController.swift
//  Project7
//
//  Created by Derya Çayıroğlu on 31.07.2022.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    var webView: WKWebView!
    var detailItem: Petition?
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let detailItem = detailItem else {
            return
        }
        
        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 100%; } </style>
        </head>
        <body>
        <h3 style="color:red">\(detailItem.title)</h4>
        <p>\(detailItem.body)</p>
        <p style="color:blue"> Signature Count : \(detailItem.signatureCount)</p>
        </body>
        </html>
        """
        
        webView.loadHTMLString(html , baseURL: nil)
    }
    

}
