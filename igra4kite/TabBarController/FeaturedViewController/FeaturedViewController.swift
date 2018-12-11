//
//  FeaturedViewController.swift
//  igra4kite
//
//  Created by Atanas Chompolov on 9.12.18.
//  Copyright © 2018 Atanas Chompolov. All rights reserved.
//

import UIKit

class FeaturedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Featured"
        self.view.backgroundColor = UIColor.white
        
        // Add UImage carousel
        let carousel: UIImageView = {
            let imageView = UIImageView()
            
            imageView.backgroundColor = UIColor.purple
            let height = self.view.safeAreaLayoutGuide.layoutFrame.size.width/2
            imageView.frame.size.height = height
            
            return imageView
        }()
        self.view.addSubview(carousel)
        carousel.translatesAutoresizingMaskIntoConstraints = false
        
        // Add CollectionView
        let featuredControllerLayout = UICollectionViewFlowLayout()
        // Add CollectionViewController
        featuredControllerLayout.scrollDirection = .vertical
        let featuredController = FeaturedCollectionViewController(collectionViewLayout: featuredControllerLayout)
        guard let featuredView = featuredController.collectionView else { return }
        self.view.addSubview(featuredView)
        featuredView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup Constraints
        if #available(iOS 11.0, *) {
            let guide = self.view.safeAreaLayoutGuide
            
            carousel.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
            carousel.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
            carousel.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
            carousel.heightAnchor.constraint(equalToConstant: carousel.frame.size.height).isActive = true
            
            featuredView.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
            featuredView.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
            featuredView.topAnchor.constraint(equalTo: carousel.bottomAnchor).isActive = true
            featuredView.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
        }
    }
}
