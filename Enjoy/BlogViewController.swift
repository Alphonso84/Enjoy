//
//  ViewController.swift
//  Enjoy
//
//  Created by user on 3/20/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import UIKit
import WebKit

class blogView: UIViewController  {
   
    @IBOutlet weak var website: WKWebView!
    
    var url: URL!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarImage()
        website.navigationDelegate = self as? WKNavigationDelegate
        url = URL(string:"https://blog.enjoy.com")
        website.load(URLRequest(url: url))
    }
    
    func addNavBarImage() {
        let navController = navigationController!
        let image = #imageLiteral(resourceName: "Enjoy_logo-2_1_")
        let imageView = UIImageView(image: image)
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        let bannerX = bannerWidth / 2 - image.size.width / 2
        let bannerY = bannerHeight / 2 - image.size.height / 2
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

