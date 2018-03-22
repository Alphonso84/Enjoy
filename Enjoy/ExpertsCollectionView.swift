//
//  ExpertsCollectionView.swift
//  Enjoy
//
//  Created by user on 3/20/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit


class ExpertsCollectionView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let expertBio = ["Q: What are your hobbies outside Enjoy? A: Traveling as much as possible, watching movies, spending time with family and friends and obsessing over celebrity gossip and lipsticks. Q:What is your super power? A: Telepathy mind control, teleportation and healing powers. Also making a decision (is that a superpower?) because I can’t seem to do that."]
    let expertNames = ["Jonan","Michael"]
    let expertPics = [#imageLiteral(resourceName: "Janan"),#imageLiteral(resourceName: "Michael"),#imageLiteral(resourceName: "Mike")]
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        addNavBarImage()
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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return expertPics.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCell
        
        cell.profilePic?.image = expertPics[indexPath.row]
        return cell
    }
    
   
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    
    
    
}
