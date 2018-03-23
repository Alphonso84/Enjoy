//
//  MenuView.swift
//  Enjoy
//
//  Created by user on 3/23/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

class Menu: UIViewController {
    @IBOutlet weak var MenuImage: UIImageView!
    
    @IBAction func userDidTap(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
}
