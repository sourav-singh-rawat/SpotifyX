//
//  SXEdgeInsets.swift
//  SpotifyX
//
//  Created by Sourav Singh Rawat on 01/12/22.
//

import Foundation

struct SXEdgeInsets {
    let top: Double
    let bottom: Double
    let left: Double
    let right: Double
}

extension SXEdgeInsets {
    
    static var zero: SXEdgeInsets = all(0)
    
    static func all(_ insets: Double) -> SXEdgeInsets {
        return SXEdgeInsets(
            top: insets,
            bottom: insets,
            left: insets,
            right: insets
        )
    }
    
    static func ssymmetric(
        horizontal: Double,
        vertical: Double
    ) -> SXEdgeInsets {
        return SXEdgeInsets(
            top: vertical,
            bottom: vertical,
            left: horizontal,
            right: horizontal
        )
    }
}
