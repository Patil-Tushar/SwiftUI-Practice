//
//  ShimmerModifier.swift
//  ShimmerView
//
//  Created by Tushar Patil on 13/03/24.
//

import SwiftUI

struct Shimmer: ViewModifier {
    
    // MARK: - Private Properties
    
    @State private var gradientPosition: CGFloat = -0.4 // Initial position off-screen
    private let gradient: Gradient
    private let animation: Animation
    
    init(
        gradient: Gradient,
        animation: Animation
    ) {
        self.gradient = gradient
        self.animation = animation
    }
    
    // MARK: - Body
    
    func body(content: Content) -> some View {
        content
            .mask(
                LinearGradient(
                    gradient: Gradient(
                        colors: [
                            .black.opacity(0.3),
                            .white.opacity(0.6),
                            .black.opacity(0.3)
                        ]
                    ),
                    startPoint: .init(x: gradientPosition, y: 0),
                    endPoint: .init(x: gradientPosition + 0.4, y: 0)
                )
            )
            .onAppear {
                withAnimation(animation) {
                    self.gradientPosition = 1.5 // Move gradient from leading to trailing
                }
            }
    }
}
