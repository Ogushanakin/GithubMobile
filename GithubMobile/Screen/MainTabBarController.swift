//
//  MainTabBarController.swift
//  GithubMobile
//
//  Created by AKIN on 19.01.2023.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc1 = UINavigationController(rootViewController: ProfileController())
        let vc2 = UINavigationController(rootViewController: ProfileController())
        let vc3 = UINavigationController(rootViewController: ProfileController())
        let vc4 = UINavigationController(rootViewController: ProfileController())
        
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "bell")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "person")
        
        vc1.title = "Home"
        vc2.title = "Notifications"
        vc3.title = "Explore"
        vc4.title = "Profile"
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }

}
