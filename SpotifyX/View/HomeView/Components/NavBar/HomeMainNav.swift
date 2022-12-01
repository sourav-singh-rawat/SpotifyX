//
//  HomeMainNav.swift
//  SpotifyX
//
//  Created by Sourav Singh Rawat on 01/12/22.
//

import UIKit

class HomeMainNav: SXView {
    
    private let timeWishLable : SXLabel = {
        let label = SXLabel()
        
        label.enableAutolayout()
        label.textColor = SXThemeAssistant.shared.currentTheme.titleTextColor
        label.fontSize(28)
        
        return label
    }()
    
    private let notificationIcon : SXImageView = {
        let image = SXImageView()
        
        image.enableAutolayout()
        image.image = UIImage(systemName: "bell")
        image.tintColor = SXThemeAssistant.shared.currentTheme.secondaryColor
        image.size(16)
        
        return image
    }()
    
    private let recentPlayedIcon: SXImageView = {
        let image = SXImageView()
        
        image.enableAutolayout()
        image.image = UIImage(systemName: "clock.arrow.circlepath")
        image.tintColor = SXThemeAssistant.shared.currentTheme.secondaryColor
        image.size(16)
        
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        arrangeSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func arrangeSubviews() {
        let stackView = SXStackView(arrangedSubviews: [
            timeWishLable,
            makeNavRightItems()
        ])
        
        stackView.enableAutolayout()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .firstBaseline
        
        stackView.backgroundColor = .systemBlue
        
        addSubview(stackView)
        
        stackView.padding(to: self, withVerticalInsets: 8)
    }
    
    private func makeNavRightItems() -> SXStackView {
        let stackView = SXStackView(arrangedSubviews: [
            notificationIcon,
            recentPlayedIcon
        ])
        
        stackView.enableAutolayout()
        stackView.axis = .horizontal
        stackView.alignment = .center
        
        return stackView
    }
    
    func configure(
        timeWishText: String
    ) {
        timeWishLable.text = timeWishText
    }
}
