//
//  RootViewController.swift
//  SpotifyX
//
//  Created by Sourav Singh Rawat on 28/11/22.
//

import UIKit

class RootViewController: SXTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureTabsController()
    }
    
    func configureTabsController(){
        viewControllers = [
            homeViewController,
            searchViewController,
            libraryViewController
        ]
        
        tabBar.backgroundColor = .systemBackground
    }
    
    
    let homeViewController: SXNavigationController = {
        let homeViewController = HomeViewController()
        
        let navigationController = SXNavigationController(
            rootViewController: homeViewController
        )
        
        navigationController.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        
        return navigationController
    }()
    
    let searchViewController: SXNavigationController = {
        let searchViewController = SearchViewController()
        
        let navigationController = SXNavigationController(
            rootViewController: searchViewController
        )
        
        navigationController.tabBarItem = SXTabBarItem(
            title: "Search",
            image: UIImage(systemName: "magnifyingglass"),
            selectedImage: UIImage(systemName: "magnifyingglass.circle.fill")
        )
        
        return navigationController
    }()
    
    let libraryViewController: SXNavigationController = {
        let libraryViewController = LibraryViewController()
        
        let navigationController = SXNavigationController(
            rootViewController: libraryViewController
        )
        
        navigationController.tabBarItem = SXTabBarItem(
            title: "Your Library",
            image: UIImage(systemName: "books.vertical"),
            selectedImage: UIImage(systemName: "books.vertical.fill")
        )
        
        return navigationController
    }()

}
