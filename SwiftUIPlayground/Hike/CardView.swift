//
//  CardView.swift
//  SwiftUIPlayground
//
//  Created by Danil Frolov on 18.10.2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color("ColorIndigoMedium"),
                            Color("ColorSalmonLight")
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 256, height: 256)
            
            Image("hikeImage-1")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
