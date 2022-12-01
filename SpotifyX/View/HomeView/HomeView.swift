//
//  HomeView.swift
//  SpotifyX
//
//  Created by Sourav Singh Rawat on 30/11/22.
//

import UIKit

class HomeView: SXView {
    
    private let testButton: SXButton = {
        let btn = SXButton()
        
        btn.enableAutolayout()
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .white
        
        return btn
    }()
    
    private let mainView: SXView = {
        let view = SXView()
        
        view.enableAutolayout()
        
        view.backgroundColor = .black
        
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.widthAnchor.constraint(equalToConstant: 400).isActive = true
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        arrangeSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func arrangeSubviews(){
        let combinedView = makeCombinedView()
        
        addSubview(combinedView)
        
        combinedView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        combinedView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }

    private func makeCombinedView() -> SXView {
        mainView.addSubview(testButton)
        
        testButton.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        testButton.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        
        return mainView
    }
    
    func configure(buttonTitle: String){
        testButton.setTitle(buttonTitle, for: .normal)
    }
}
