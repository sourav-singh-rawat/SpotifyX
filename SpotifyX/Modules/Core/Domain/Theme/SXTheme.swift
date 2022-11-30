//
//  SXTheme.swift
//  SpotifyX
//
//  Created by Sourav Singh Rawat on 29/11/22.
//

import UIKit

enum SXTheme: String {
    case lightTheme = "lightTheme"
    case darkTheme = "darkTheme"
    
    var mainColor: UIColor {
        switch self {
        case .lightTheme:
            return UIColor.white
        case .darkTheme:
            return UIColor.black
        }
    }
    
    //Customizing the Navigation Bar
    var barStyle: UIBarStyle {
        switch self {
        case .lightTheme:
            return .default
        case .darkTheme:
            return .black
        }
    }
    
    var navigationBackgroundImage: UIImage? {
        return self == .lightTheme ? UIImage(named: "navBackground") : nil
    }
    
    var tabBarBackgroundImage: UIImage? {
        return self == .lightTheme ? UIImage(named: "tabBarBackground") : nil
    }
    
    var backgroundColor: UIColor {
        switch self {
        case .lightTheme:
            return UIColor.white
        case .darkTheme:
            return UIColor.black
        }
    }
    
    var secondaryColor: UIColor {
        switch self {
        case .lightTheme:
            return UIColor.black
        case .darkTheme:
            return UIColor.white
        }
    }
    
    var titleTextColor: UIColor {
        switch self {
        case .lightTheme:
            return UIColor.black
        case .darkTheme:
            return UIColor.white
        }
    }
    var subtitleTextColor: UIColor {
        switch self {
        case .lightTheme:
            return UIColor.black
        case .darkTheme:
            return UIColor.white
        }
    }
    
}
