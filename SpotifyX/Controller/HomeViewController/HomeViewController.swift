//
//  HomeViewController.swift
//  SpotifyX
//
//  Created by Sourav Singh Rawat on 30/11/22.
//

import UIKit

class HomeViewController: SXTableViewController {
    
    let navigationView: SXView = {
        let view = HomeMainNav()
        
        view.enableAutolayout()
        view.configure(timeWishText: "Good Morning")
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = SXThemeAssistant.shared.currentTheme.backgroundColor
        
        configureNavigationBar()
    }
    
    func configureNavigationBar() {
        navigationItem.titleView = navigationView
    }
}
