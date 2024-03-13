//
//  ContentView.swift
//  ShimmerView
//
//  Created by Tushar Patil on 12/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            backgroundGradientView()
            VStack {
                Rectangle()
                    .frame(
                        width: UIScreen.main.bounds.width - 32,
                        height: 40
                    )
                    .foregroundColor(.white)
                    .shimmerLoading()
                Text("Shimmer Animation For You!")
                    .font(.title)
                    .foregroundColor(.white)
                    .shimmerLoading()
            }
        }
    }
    
    @ViewBuilder
    private func backgroundGradientView() -> some View {
        LinearGradient(
            gradient: Gradient(
                colors: [
                    Color(red: 0.34, green: 0.46, blue: 0.63),
                    Color(red: 0.15, green: 0.25, blue: 0.38)
                ]
            ),
            startPoint: .top,
            endPoint: .bottom
        )
    }
}

// MARK: - Preview

#Preview {
    ContentView()
}
