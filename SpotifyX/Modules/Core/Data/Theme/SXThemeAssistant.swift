//
//  SXThemeAssistant.swift
//  SpotifyX
//
//  Created by Sourav Singh Rawat on 29/11/22.
//

import UIKit

class SXThemeAssistant: SXThemeProtocol {
    
    static let shared: SXThemeProtocol = SXThemeAssistant()
    
    private var _currentTheme: SXTheme?
    
    var currentTheme: SXTheme {
        if _currentTheme != nil {
            return _currentTheme!
        }
        
        do {
            let storedTheme: (key: String,value: String) = try SXLocalStorage.shared.retrive(
                key: SXSelectedThemeKey
            )
            
            _currentTheme = SXTheme(rawValue: storedTheme.value)!
        }
        catch{
            _currentTheme = SXTheme.darkTheme
        }
        
        return _currentTheme!
    }
    
    func applyTheme(theme: SXTheme) -> Void {
        _currentTheme = theme
        
        storeThemeChanged(theme)
        
        let sharedApplication = UIApplication.shared
        sharedApplication.delegate?.window??.tintColor = theme.mainColor
        
        //MARK: - UINavigationBar
//        UINavigationBar.appearance().barStyle = theme.barStyle
//        UINavigationBar.appearance().setBackgroundImage(theme.navigationBackgroundImage, for: .default)
//        UINavigationBar.appearance().backIndicatorImage = UIImage(named: "backArrow")
//        UINavigationBar.appearance().backIndicatorTransitionMaskImage = UIImage(named: "backArrowMaskFixed")
        
        //MARK: - UITabBar
        UITabBar.appearance().barStyle = theme.barStyle
//        UITabBar.appearance().backgroundImage = theme.tabBarBackgroundImage
        UITabBar.appearance().backgroundColor = theme.backgroundColor
        UITabBar.appearance().tintColor = theme.secondaryColor
        
        //            let tabIndicator = UIImage(named: "tabBarSelectionIndicator")?.withRenderingMode(.alwaysTemplate)
        //            let tabResizableIndicator = tabIndicator?.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 2.0, bottom: 0, right: 2.0))
        //            UITabBar.appearance().selectionIndicatorImage = tabResizableIndicator
        
        //            let controlBackground = UIImage(named: "controlBackground")?.withRenderingMode(.alwaysTemplate)
        //                .resizableImage(withCapInsets: UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3))
        //            let controlSelectedBackground = UIImage(named: "controlSelectedBackground")?
        //                .withRenderingMode(.alwaysTemplate)
        //                .resizableImage(withCapInsets: UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3))
        
        //            UISegmentedControl.appearance().setBackgroundImage(controlBackground, for: .normal, barMetrics: .default)
        //            UISegmentedControl.appearance().setBackgroundImage(controlSelectedBackground, for: .selected, barMetrics: .default)
        
        //            UIStepper.appearance().setBackgroundImage(controlBackground, for: .normal)
        //            UIStepper.appearance().setBackgroundImage(controlBackground, for: .disabled)
        //            UIStepper.appearance().setBackgroundImage(controlBackground, for: .highlighted)
        //            UIStepper.appearance().setDecrementImage(UIImage(named: "fewerPaws"), for: .normal)
        //            UIStepper.appearance().setIncrementImage(UIImage(named: "morePaws"), for: .normal)
        
        //            UISlider.appearance().setThumbImage(UIImage(named: "sliderThumb"), for: .normal)
        //            UISlider.appearance().setMaximumTrackImage(UIImage(named: "maximumTrack")?
        //                .resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 0.0, bottom: 0, right: 6.0)), for: .normal)
        //            UISlider.appearance().setMinimumTrackImage(UIImage(named: "minimumTrack")?
        //                .withRenderingMode(.alwaysTemplate)
        //                .resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 6.0, bottom: 0, right: 0)), for: .normal)
        //
        //            UISwitch.appearance().onTintColor = theme.mainColor.withAlphaComponent(0.3)
        //            UISwitch.appearance().thumbTintColor = theme.mainColor
        //        }
    }
    
    private func storeThemeChanged(_ theme: SXTheme) {
        do {
            let _ = try SXLocalStorage.shared.store(key: SXSelectedThemeKey, value: theme.rawValue) as (key:String,value: String)
        } catch {
            do {
                let _ = try SXLocalStorage.shared.update(key: SXSelectedThemeKey, value: theme.rawValue) as (key:String,value: String)
            } catch {
                print("Failed to store theme changed: \(error.localizedDescription)")
            }
        }
    }
}
