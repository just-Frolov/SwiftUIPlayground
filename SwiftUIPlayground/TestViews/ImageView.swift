//
//  ImageView.swift
//  SwiftUIPlayground
//
//  Created by Danil Frolov on 18.10.2023.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self.imageModifier()
            .frame(maxWidth: .greatestFiniteMagnitude)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ImageView: View {
    private enum Constants {
        static let imageURL = URL(string: "https://picsum.photos/id/237/200/300")
    }
    
    var body: some View {
        AsyncImage(url: Constants.imageURL, scale: 0.5) { image in
            image
                .imageModifier()
                .cornerRadius(16)
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .iconModifier()
        }
        .padding(40)

        AsyncImage(
            url: Constants.imageURL, 
            scale: 0.5,
            transaction: Transaction(animation: .spring(
                response: 0.5,
                dampingFraction: 0.6,
                blendDuration: 0.25
            ))
        ) { phase in
            switch phase {
            case .empty:
                Image(systemName: "photo.circle.fill").iconModifier()
            case .success(let image):
                image.imageModifier()
                    //.transition(.move(edge: .bottom))
                    .transition(.scale)
            case .failure(_):
                Image(systemName: "ant.circle.fill").iconModifier()
            @unknown default:
                ProgressView()
            }
        }
        .padding(40)
    }
}

#Preview {
    ImageView()
}
