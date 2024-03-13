//
//  View+Extension.swift
//  ShimmerView
//
//  Created by Tushar Patil on 13/03/24.
//

import SwiftUI

extension View {
    func shimmerLoading(gradient: Gradient, animation: Animation) -> some View {
        modifier(
            Shimmer(
                gradient: gradient,
                animation: animation
            )
        )
    }
    
    func shimmerLoading() -> some View {
        let gradient = Gradient(
            colors: [
                .black.opacity(0.3),
                .white.opacity(0.6),
                .black.opacity(0.3)
            ]
        )
        let animation = Animation.linear(
            duration: 1
        ).delay(
            0.2
        ).repeatForever(
            autoreverses: false
        )
        
        return modifier(
            Shimmer(
                gradient: gradient,
                animation: animation
            )
        )
    }
}
