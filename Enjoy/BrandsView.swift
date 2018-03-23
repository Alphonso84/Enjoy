//
//  BrandsView.swift
//  Enjoy
//
//  Created by user on 3/22/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit

class BrandsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var brandImages = [#imageLiteral(resourceName: "ATT"),#imageLiteral(resourceName: "Sonos"),#imageLiteral(resourceName: "Dji"),#imageLiteral(resourceName: "eero"),#imageLiteral(resourceName: "Tag Heuer")]
    var brandLogo = [#imageLiteral(resourceName: "AT&T logo"),#imageLiteral(resourceName: "sonos logo"),#imageLiteral(resourceName: "dji logo"),#imageLiteral(resourceName: "eero logo"),#imageLiteral(resourceName: "tag heuer logo")]
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarImage()
    }
    
    @IBAction func menuButtonPressed(_ sender: Any) {
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyBrandCell
        cell.detailTextLabel?.text = "AT&T"
        cell.textLabel?.contentMode = .bottomRight
        cell.imageView?.contentMode = .scaleAspectFill
      cell.cellImage?.image = brandImages[indexPath.row]
        cell.cellImage?.alpha = 0.65
        cell.logoImage?.image = #imageLiteral(resourceName: "vignette3")
        cell.logoImage?.alpha = 0.65
        cell.logoTopImage?.contentMode = .scaleAspectFit
        cell.logoTopImage?.image = brandLogo[indexPath.row]
        
        return cell
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
    
    
    
    
    
}
