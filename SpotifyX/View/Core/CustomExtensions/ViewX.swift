//
//  SXViewExtension.swift
//  SpotifyX
//
//  Created by Sourav Singh Rawat on 30/11/22.
//

import UIKit

extension UIView {
    func enableAutolayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}

//MARK: - Padding
extension UIView {
    func padding(
        to view: UIView,
        withInsets insets: SXEdgeInsets?,
        withSafeAreaAware safeAreaAware: Bool = false
    ) {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(
                equalTo: safeAreaAware
                ?view.safeAreaLayoutGuide.topAnchor
                :view.topAnchor,
                constant: insets?.top ?? 0
            ),
            self.bottomAnchor.constraint(
                equalTo: safeAreaAware
                ?view.safeAreaLayoutGuide.bottomAnchor
                :view.bottomAnchor,
                constant: -(insets?.bottom ?? 0)
            ),
            self.leftAnchor.constraint(
                equalTo: safeAreaAware
                ?view.safeAreaLayoutGuide.leftAnchor
                :view.leftAnchor,
                constant: insets?.left ?? 0
            ),
            self.rightAnchor.constraint(
                equalTo: safeAreaAware
                ?view.safeAreaLayoutGuide.rightAnchor
                :view.rightAnchor,
                constant: -(insets?.right ?? 0)
            )
        ])
    }
    
    func padding(
        to view: UIView,
        withTopInsets insets: Double,
        withSafeAreaAware safeAreaAware: Bool = false
    ) {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(
                equalTo: safeAreaAware
                ?view.safeAreaLayoutGuide.topAnchor
                :view.topAnchor,
                constant: insets
            )
        ])
    }
    
    func padding(
        to view: UIView,
        withBottomInsets insets: Double,
        withSafeAreaAware safeAreaAware: Bool = false
    ) {
        NSLayoutConstraint.activate([
            self.bottomAnchor.constraint(
                equalTo: safeAreaAware
                ?view.safeAreaLayoutGuide.bottomAnchor
                :view.bottomAnchor,
                constant: -insets
            )
        ])
    }
    
    func padding(
        to view: UIView,
        withLeftInsets insets: Double,
        withSafeAreaAware safeAreaAware: Bool = false
    ) {
        NSLayoutConstraint.activate([
            self.leftAnchor.constraint(
                equalTo: safeAreaAware
                ?view.safeAreaLayoutGuide.leftAnchor
                :view.leftAnchor,
                constant: insets
            )
        ])
    }
    
    func padding(
        to view: UIView,
        withRightInsets insets: Double,
        withSafeAreaAware safeAreaAware: Bool = false
    ) {
        NSLayoutConstraint.activate([
            self.rightAnchor.constraint(
                equalTo: safeAreaAware
                ?view.safeAreaLayoutGuide.rightAnchor
                :view.rightAnchor,
                constant: -insets
            )
        ])
    }
    
    
    func padding(
        to view: UIView,
        withHorizontalInsets insets: Double,
        withSafeAreaAware safeAreaAware: Bool = false
    ) {
        NSLayoutConstraint.activate([
            self.leftAnchor.constraint(
                equalTo: safeAreaAware
                ?view.safeAreaLayoutGuide.leftAnchor
                :view.leftAnchor,
                constant: insets
            ),
            self.rightAnchor.constraint(
                equalTo: safeAreaAware
                ?view.safeAreaLayoutGuide.rightAnchor
                :view.rightAnchor,
                constant: -insets
            )
        ])
    }
    
    func padding(
        to view: UIView,
        withVerticalInsets insets: Double,
        withSafeAreaAware safeAreaAware: Bool = false
    ) {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(
                equalTo: safeAreaAware
                ?view.safeAreaLayoutGuide.topAnchor
                :view.topAnchor,
                constant: insets
            ),
            self.bottomAnchor.constraint(
                equalTo: safeAreaAware
                ?view.safeAreaLayoutGuide.bottomAnchor
                :view.bottomAnchor,
                constant: -insets
            )
        ])
    }
}

//MARK: - Dimensions
extension UIView {
    func size(_ side: Double) {
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalToConstant: side),
            self.heightAnchor.constraint(equalTo: self.widthAnchor)
        ])
    }
    
    func width(_ width: Double) {
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalToConstant: width)
        ])
    }
    
    func height(_ height: Double) {
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: height)
        ])
    }
    
    func constraintWidth(min width: Double){
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(greaterThanOrEqualToConstant: width)
        ])
    }
    
    func constraintHeight(min height: Double){
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(greaterThanOrEqualToConstant: height)
        ])
    }
    
    func constraintWidth(max width: Double){
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(lessThanOrEqualToConstant: width)
        ])
    }
    
    func constraintHeight(max height: Double){
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(lessThanOrEqualToConstant: height)
        ])
    }
}
