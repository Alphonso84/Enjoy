//
//  InitialView.swift
//  Enjoy
//
//  Created by user on 3/20/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit


class initialView: UIViewController {
    
    @objc func switchViews() {
        
        DispatchQueue.main.async() {
            
            self.performSegue(withIdentifier: "initialSegue", sender: self)
            
        }
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        
    }
    
    func viewDidAppear() {
        super.viewDidAppear(true)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(switchViews), userInfo: nil, repeats: false)
        
    }
    
    
}
