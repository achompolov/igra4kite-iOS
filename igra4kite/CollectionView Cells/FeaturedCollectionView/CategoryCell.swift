//
//  CategoryCell.swift
//  igra4kite
//
//  Created by Atanas Chompolov on 9.12.18.
//  Copyright © 2018 Atanas Chompolov. All rights reserved.
//

import UIKit

class CategoryCell: CollectionViewCell {
    
    let backgroundCategoryView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.brown
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        
        let imageView = UIImageView()
        view.addSubview(imageView)
        view.addConstraintsWithFormat("H:|[v0]|", imageView)
        view.addConstraintsWithFormat("V:|[v0]|", imageView)
        
        return view
    }()
    
    let textView: UIView = {
        let view = UIView()
        
        let category: UILabel = {
            let label = UILabel()
            label.textAlignment = .center
            label.text = "Category"
            label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
            label.textColor = UIColor.white
            
            return label
        }()
        
        let browse: UILabel = {
            let label = UILabel()
            label.textAlignment = .center
            label.text = "Browse category >"
            label.font = UIFont.systemFont(ofSize: 12, weight: .thin)
            label.textColor = UIColor.white
            
            return label
        }()
        
        view.addSubview(category)
        view.addSubview(browse)
        view.addConstraintsWithFormat("H:|[v0]|", category)
        view.addConstraintsWithFormat("H:|[v0]|", browse)
        view.addConstraintsWithFormat("V:|[v0]-2-[v1]|", category, browse)
        
        
        return view
    }()
    
    override func loadCellInterface() {
        // Add Subviews
        self.addSubview(backgroundCategoryView)
        self.addSubview(textView)
        
        // Add Constraints to the Subiews
        addConstraintsWithFormat("H:|[v0]|", backgroundCategoryView)
        addConstraintsWithFormat("V:|[v0]|", backgroundCategoryView)
        
        addConstraintsWithFormat("H:|[v0]|", textView)
        addConstraint(NSLayoutConstraint(item: textView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0))
    }
}

