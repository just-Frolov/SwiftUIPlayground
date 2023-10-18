//
//  GradientTextView.swift
//  SwiftUIPlayground
//
//  Created by Danil Frolov on 18.10.2023.
//

import SwiftUI

struct GradientTextView: View {
    var body: some View {
        Text("iOS")
            .font(.system(size: 180))
            .fontWeight(.black)
            .foregroundStyle(
                LinearGradient(
                    colors: [.teal, .purple, .pink],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
    }
}

#Preview {
    GradientTextView()
}
