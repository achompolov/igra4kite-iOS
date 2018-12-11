//
//  HelperAddConstraintsWithFormat.swift
//  igra4kite
//
//  Created by Atanas Chompolov on 9.12.18.
//  Copyright © 2018 Atanas Chompolov. All rights reserved.
//

import UIKit

extension UIView {
    
    //Easier function for adding Horizontal & Vertical constraints
    func addConstraintsWithFormat(_ format: String, _ views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
