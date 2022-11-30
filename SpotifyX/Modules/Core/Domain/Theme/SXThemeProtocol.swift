//
//  SXThemeProtocol.swift
//  SpotifyX
//
//  Created by Sourav Singh Rawat on 29/11/22.
//

import Foundation

let SXSelectedThemeKey = "selectedThemeKey"

protocol SXThemeProtocol {
    var currentTheme: SXTheme { get }
    
    func applyTheme(theme: SXTheme) -> Void
}
