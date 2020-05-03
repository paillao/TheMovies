//
//  AppsSearchController.swift
//  Search
//
//  Created by Jorge Paillao on 7/8/19.
//  Copyright © 2019 Jorge Paillao. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [
            createNavController(viewController: PopularesController(), title:  "Peliculas Populares", imageName: "popular"),
            createNavController(viewController: TopRatedController(), title:  "Peliculas Top Rated", imageName: "top_rated")
        ]
    }
    fileprivate func createNavController (viewController: UIViewController, title: String, imageName: String) -> UIViewController{
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        tabBar.tintColor = AppColors.red
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = title
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
}
