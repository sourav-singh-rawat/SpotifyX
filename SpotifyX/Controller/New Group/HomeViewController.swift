//
//  HomeViewController.swift
//  SpotifyX
//
//  Created by Sourav Singh Rawat on 28/11/22.
//

import UIKit

class HomeViewController: SXTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = SXThemeAssistant.shared.currentTheme.backgroundColor
        
        configureNavBar()
        configureTableView()
    }
    
    func configureNavBar(){
        navigationItem.leftBarButtonItem = UITextView()
    }
    
    func configureTableView(){
        
    }

}
