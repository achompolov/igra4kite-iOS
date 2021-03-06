//
//  FeaturedCollectionViewController.swift
//  igra4kite
//
//  Created by Atanas Chompolov on 7.12.18.
//  Copyright © 2018 Atanas Chompolov. All rights reserved.
//

import UIKit

// CellIdentifiers
enum CellIdentifiers: String, CaseIterable {
    case FeaturedCellIdentifier = "featuredCell"
    case CategoriesCellIdentifier = "categoriesCell"
    case RecommendedCellIdentifier = "recommendedCell"
    case EmptyCellIdentifier = "emptyCell"
}

class FeaturedCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView.register(FeaturedCell.self, forCellWithReuseIdentifier: CellIdentifiers.FeaturedCellIdentifier.rawValue)
        self.collectionView.register(CategoriesCell.self, forCellWithReuseIdentifier: CellIdentifiers.CategoriesCellIdentifier.rawValue)
        self.collectionView.register(RecommendedCell.self, forCellWithReuseIdentifier: CellIdentifiers.RecommendedCellIdentifier.rawValue)
        self.collectionView.register(EmptyCell.self, forCellWithReuseIdentifier: CellIdentifiers.EmptyCellIdentifier.rawValue)

        // Do any additional setup after loading the view.
        self.collectionView.backgroundColor = UIColor.white
        self.collectionView.alwaysBounceVertical = true
        self.collectionView.contentInsetAdjustmentBehavior = .never
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return CellIdentifiers.allCases.count-1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let featuredCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.FeaturedCellIdentifier.rawValue, for: indexPath) as! FeaturedCell
        let categoriesCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.CategoriesCellIdentifier.rawValue, for: indexPath) as! CategoriesCell
        let recommendedCell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.RecommendedCellIdentifier.rawValue, for: indexPath) as! RecommendedCell
        
        // Configure the cells
        switch indexPath.row {
        case 0:
            //featuredCell.backgroundColor = UIColor.green
            return featuredCell
        case 1:
            //categoriesCell.backgroundColor = UIColor.brown
            return categoriesCell
        case 2:
            //categoriesCell.backgroundColor = UIColor.brown
            return recommendedCell
        default:
            break
        }
        
        return featuredCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // CGSize for different cells
        switch indexPath.row {
        case 0:
            return CGSize(width: UIScreen.main.bounds.width, height: 200)
        case 1:
            return CGSize(width: UIScreen.main.bounds.width, height: 150)
        case 2:
            return CGSize(width: UIScreen.main.bounds.width, height: 200)
        case 3:
            return CGSize(width: UIScreen.main.bounds.width, height: 100)
        default:
            break
        }
        
        return CGSize(width: UIScreen.main.bounds.width, height: 80)
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
}
