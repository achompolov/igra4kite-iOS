//
//  CollectionViewCell.swift
//  igra4kite
//
//  Created by Atanas Chompolov on 7.12.18.
//  Copyright © 2018 Atanas Chompolov. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.loadCellInterface()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadCellInterface() { }
}
