//
//  ContentView.swift
//  SwiftUIPlayground
//
//  Created by Danil Frolov on 17.10.2023.
//

import SwiftUI

struct ContentView: View {
    private enum Constants {
        static let appleURL = URL(string: "https://www.apple.com/")!
    }
    var body: some View {
        VStack(spacing: 40) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Hello, world!")
            
            Link("Go to Apple", destination: Constants.appleURL)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                .tint(.pink)
            
            Link(destination: Constants.appleURL) {
                HStack(spacing: 16) {
                    Image(systemName: "apple.logo")
                    Text("Apple Store")
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(
                    Capsule()
                        .fill(Color.blue)
                )
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
