//
//  TabBarController.swift
//  igra4kite
//
//  Created by Atanas Chompolov on 7.12.18.
//  Copyright © 2018 Atanas Chompolov. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        // MARK: TabBar
        tabBar.tintColor = UIColor.black // Change tabBar tint color
        
        // MARK: Controllers
        let featuredController = getFeaturedNavigarionController()
        let exploreController = getExploreNavigarionController()
        let cartController = getCartNavigarionController()
        let userController = getUserNavigarionController()
        
        viewControllers = [ featuredController,
                            exploreController,
                            cartController,
                            userController
        ]
    }
    
    // MARK: Getters for the NavigationControllers
    /// Featured
    private func getFeaturedNavigarionController() -> UINavigationController {
        let featuredController = FeaturedViewController()
        let featuredNavigationController = UINavigationController(rootViewController: featuredController)
        
        featuredNavigationController.navigationItem.title = "Featured"
        
        featuredNavigationController.tabBarItem.title = nil
        featuredNavigationController.tabBarItem.image = UIImage(named: "homeIcon")
        featuredNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -15, right: 0)
        
        return featuredNavigationController
    }
    
    /// Explore
    private func getExploreNavigarionController() -> UINavigationController {
        let exploreController = ExploreViewController()
        let exploreNavigationController = UINavigationController(rootViewController: exploreController)
        
        exploreNavigationController.navigationItem.title = "Explore"
        
        exploreNavigationController.tabBarItem.title = nil
        exploreNavigationController.tabBarItem.image = UIImage(named: "searchIcon")
        exploreNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -15, right: 0)
        
        return exploreNavigationController
    }
    
    /// Cart
    private func getCartNavigarionController() -> UINavigationController {
        let cartController = CartTableViewController()
        let cartNavigationController = UINavigationController(rootViewController: cartController)
        
        cartNavigationController.navigationItem.title = "Cart"
        
        cartNavigationController.tabBarItem.title = nil
        cartNavigationController.tabBarItem.image = UIImage(named: "cartIcon")
        cartNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -15, right: 0)
        
        return cartNavigationController
    }
    
    /// User
    private func getUserNavigarionController() -> UINavigationController {
        let userController = UserTableViewController()
        let userNavigationController = UINavigationController(rootViewController: userController)
        
        
        
        userNavigationController.tabBarItem.title = nil
        userNavigationController.tabBarItem.image = UIImage(named: "userIcon")
        userNavigationController.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -15, right: 0)
        
        return userNavigationController
    }
}
