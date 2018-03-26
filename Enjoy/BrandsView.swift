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
    //ARRAY OF BRANDS
    var brandsArray = [Brand]()
   
    
    //BRANDS
    let att = Brand(brandImage: #imageLiteral(resourceName: "ATT"), brandLogo: #imageLiteral(resourceName: "AT&T logo"))
    let sonos = Brand(brandImage: #imageLiteral(resourceName: "Sonos"), brandLogo: #imageLiteral(resourceName: "sonos logo"))
    let dji = Brand(brandImage: #imageLiteral(resourceName: "Dji"), brandLogo: #imageLiteral(resourceName: "dji logo"))
    let eero = Brand(brandImage: #imageLiteral(resourceName: "eero"), brandLogo: #imageLiteral(resourceName: "eero logo"))
    let tagHeuer = Brand(brandImage: #imageLiteral(resourceName: "Tag Heuer"), brandLogo: #imageLiteral(resourceName: "tag heuer logo"))
    let nike = Brand(brandImage: #imageLiteral(resourceName: "Nike image"), brandLogo: #imageLiteral(resourceName: "Nike Logo"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNavBarImage()
        brandsArray.removeAll()
        brandsArray.append(att)
        brandsArray.append(sonos)
        brandsArray.append(dji)
        brandsArray.append(eero)
        brandsArray.append(tagHeuer)
        brandsArray.append(nike)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return brandsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyBrandCell
        //cell.detailTextLabel?.text = "AT&T"
        cell.textLabel?.contentMode = .bottomRight
        cell.imageView?.contentMode = .scaleAspectFill
        cell.cellImage?.image = brandsArray[indexPath.row].brandImage
        cell.cellImage?.alpha = 0.65
        cell.logoImage?.image = #imageLiteral(resourceName: "vignette3")
        cell.logoImage?.alpha = 0.65
        cell.logoTopImage?.contentMode = .scaleAspectFit
        cell.logoTopImage?.image = brandsArray[indexPath.row].brandLogo
        
        return cell
    }
    func addNavBarImage() {
        let navController = navigationController!
        let image = #imageLiteral(resourceName: "Enjoy_logo-2_1_")
        let imageView = UIImageView(image: image)
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        let bannerX = bannerWidth - image.size.width
        let bannerY = bannerHeight - image.size.height
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
    
    
    
    
    
}
