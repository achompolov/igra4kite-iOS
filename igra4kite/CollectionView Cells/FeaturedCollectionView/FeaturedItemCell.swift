//
//  FeaturedItemCell.swift
//  igra4kite
//
//  Created by Atanas Chompolov on 9.12.18.
//  Copyright © 2018 Atanas Chompolov. All rights reserved.
//

import UIKit

class FeaturedItemCell: CollectionViewCell {
    
    let backgroundItemView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.brown
        view.layer.cornerRadius = 6
        view.layer.masksToBounds = true
        
        let imageView = UIImageView()
        view.addSubview(imageView)
        view.addConstraintsWithFormat("H:|[v0]|", imageView)
        view.addConstraintsWithFormat("V:|[v0]|", imageView)
        
        return view
    }()
    
    let item: UILabel = {
        let label = UILabel()
        label.text = "Item"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        
        return label
    }()
    
    let category: UILabel = {
        let label = UILabel()
        label.text = "Category"
        label.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        label.textColor = UIColor.lightGray
        
        return label
    }()
    
    override func loadCellInterface() {
        // Add Subviews
        self.addSubview(backgroundItemView)
        self.addSubview(item)
        self.addSubview(category)
        
        // Add Constraints to the Subiews
        addConstraintsWithFormat("H:|[v0]|", backgroundItemView)
        addConstraintsWithFormat("V:|[v0(96)]", backgroundItemView)
        
        addConstraintsWithFormat("H:|[v0]|", item)
        addConstraintsWithFormat("H:|[v0]|", category)
        
        addConstraintsWithFormat("V:[v0]-2-[v1]-6-|", item, category)
    }
}

