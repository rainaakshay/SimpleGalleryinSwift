//
//  ViewController.swift
//  Collection View
//
//  Created by apple on 24/12/18.
//  Copyright © 2018 Seraphic. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet weak var gallery: UICollectionView!
    let imgView = CollectionViewCell()
    let fullScreenImage = FullScreenView()
    var images : [UIImage] = [#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "7"),#imageLiteral(resourceName: "9"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "11"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "8")]
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = gallery.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        
        cell.imageView.image = images[indexPath.row]
        
      
        
        return cell
    }

    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let x = self.storyboard?.instantiateViewController(withIdentifier: "fullScreen") as! FullScreenView
        
        x.img = images[indexPath.row]
        self.present(x, animated: true, completion: nil)
        
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      gallery.delegate = self
      gallery.dataSource = self
        
    }

    
    
    
   
    

}

