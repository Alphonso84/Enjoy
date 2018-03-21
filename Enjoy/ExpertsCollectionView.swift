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
    
    let expertPics = [#imageLiteral(resourceName: "Janan"),#imageLiteral(resourceName: "Michael"),#imageLiteral(resourceName: "Mike")]
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return expertPics.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCell
        
        cell.profilePic?.image = expertPics[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    
    
    
}
