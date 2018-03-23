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
    let expertBio = ["'Cordial, fast, and precise. What more can a customer ask? Thanks, Janan!'","'Michael was very nice and he answered all our questions. He also has a very approachable and good sense of humor. He was also very patient!'","'Mike was a great guy, and like-minded individual who lives in my area. He was extremely informative and helpful. He is a user of the product and was able to answer all of my very specific and oddball questions. He also clearly loved the product, which made me feel even better about the purchase than I already did!'","'George was great and couldn’t have been more helpful. Maybe I’ll buy a Sonos speaker system now that I know that there’s someone like George who’ll help me with the technical stuff!'"]
    let expertNames = ["Jonan","Michael","Michael","George"]
    let expertPics = [#imageLiteral(resourceName: "Janan"),#imageLiteral(resourceName: "Michael"),#imageLiteral(resourceName: "Mike"),#imageLiteral(resourceName: "George")]
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
        cell.name?.text = expertNames[indexPath.row]
        cell.bio?.text = expertBio[indexPath.row]
        return cell
    }
    
   
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    
    
    
}
