//
//  FeaturedCollectionViewCells.swift
//  igra4kite
//
//  Created by Atanas Chompolov on 7.12.18.
//  Copyright © 2018 Atanas Chompolov. All rights reserved.
//

import UIKit

class FeaturedCell: CollectionViewCell {
    
    let title: UILabel = {
        let label = UILabel()
        label.text = "Featured Items"
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        
        return label
    }()
    
    let seeAll: UILabel = {
        let label = UILabel()
        label.text = "See All >"
        label.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        label.textColor = UIColor.lightGray
        
        return label
    }()
    
    let collectionViewController: UICollectionViewController = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 24
        layout.sectionInset = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 24)
        let controller = FeaturedItemsCollectionViewController(collectionViewLayout: layout)
        
        return controller
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        
        return view
    }()
    
    override func loadCellInterface() {
        // Add Subviews
        self.addSubview(title)
        self.addSubview(seeAll)
        self.addSubview(collectionViewController.collectionView)
        self.addSubview(lineView)
        
        // Add Constraints to the Subiews
        addConstraintsWithFormat("H:|-24-[v0][v1]-24-|", title, seeAll)
        addConstraintsWithFormat("V:|[v0(48)]", title)
        addConstraintsWithFormat("V:|[v0(48)]", seeAll)
        
        addConstraintsWithFormat("H:|[v0]|", collectionViewController.collectionView)
        addConstraintsWithFormat("V:|-48-[v0]-6.5-[v1(1.5)]|", collectionViewController.collectionView, lineView)
        addConstraintsWithFormat("H:|-24-[v0]|", lineView)
    }
}

class CategoriesCell: CollectionViewCell {
    
    let title: UILabel = {
        let label = UILabel()
        label.text = "Categories"
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        
        return label
    }()
    
    let seeAll: UILabel = {
        let label = UILabel()
        label.text = "See All >"
        label.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        label.textColor = UIColor.lightGray
        
        return label
    }()
    
    let collectionViewController: UICollectionViewController = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 24
        layout.sectionInset = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 24)
        let controller = CategoriesCollectionViewController(collectionViewLayout: layout)
        
        return controller
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        
        return view
    }()
    
    override func loadCellInterface() {
        // Add Subviews
        self.addSubview(title)
        self.addSubview(seeAll)
        self.addSubview(collectionViewController.collectionView)
        self.addSubview(lineView)
        
        // Add Constraints to the Subiews
        addConstraintsWithFormat("H:|-24-[v0][v1]-24-|", title, seeAll)
        addConstraintsWithFormat("V:|[v0(48)]", title)
        addConstraintsWithFormat("V:|[v0(48)]", seeAll)
        
        addConstraintsWithFormat("H:|[v0]|", collectionViewController.collectionView)
        addConstraintsWithFormat("V:|-48-[v0]-6.5-[v1(1.5)]|", collectionViewController.collectionView, lineView)
        addConstraintsWithFormat("H:|-24-[v0]|", lineView)
    }
}

class RecommendedCell: CollectionViewCell {
    
    let title: UILabel = {
        let label = UILabel()
        label.text = "Recommended Items"
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        
        return label
    }()
    
    let seeAll: UILabel = {
        let label = UILabel()
        label.text = "See All >"
        label.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        label.textColor = UIColor.lightGray
        
        return label
    }()
    
    let collectionViewController: UICollectionViewController = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 24
        layout.sectionInset = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 24)
        let controller = RecommendedCollectionViewController(collectionViewLayout: layout)
        
        return controller
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        
        return view
    }()
    
    lazy var myCollectionView: UICollectionView = {
        let collectionView = collectionViewController.collectionView
        return collectionView!
    }()
    
    override func loadCellInterface() {
        // Add Subviews
        self.addSubview(title)
        self.addSubview(seeAll)
        self.addSubview(myCollectionView)
        self.addSubview(lineView)
        
        // Add Constraints to the Subiews
        addConstraintsWithFormat("H:|-24-[v0][v1]-24-|", title, seeAll)
        addConstraintsWithFormat("V:|[v0(48)]", title)
        addConstraintsWithFormat("V:|[v0(48)]", seeAll)
        
        addConstraintsWithFormat("H:|[v0]|", myCollectionView)
        addConstraintsWithFormat("V:|-48-[v0]|", myCollectionView)
    }
}

class EmptyCell: CollectionViewCell {
    override func loadCellInterface() {
        
    }
}
