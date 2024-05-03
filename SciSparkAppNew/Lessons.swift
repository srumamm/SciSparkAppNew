//
//  ThreeCategories.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/2/24.
//

import SwiftUI

struct ThreeCategories: View {
    var body: some View {
        ZStack {
            Color.darkGray
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Biology Lessons")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                // First bordered area
                BorderedArea(isButton: false, label: "Nature's Sugar: The Wonders of Photosynthesis")
                {
                    // Content inside the bordered area
                    Image("video2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.blue)
                        .padding()
                }
                
                // Second bordered area with a button
                BorderedArea(isButton: true, action: {
                    // Handle action when the button is tapped
                    goToVideosTrying()
                }, label: "Cell Adventures: Structure and Function Findings") { // Update label here
                    // Content inside the bordered area
                    Image("video1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.green)
                        .padding()
                }

                // Third bordered area
                BorderedArea(isButton: false, label: "Blueprint of Life: The Fascinating World of DNA") {
                    // Content inside the bordered area
                    Image("video3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.orange)
                        .padding()
                }
            }
            .padding()
        }
    }
    
    // Function to navigate to VideosTrying
    private func goToVideosTrying() {
        let videosTryingView = VideosView()
        UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: videosTryingView)
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
}


struct BorderedArea<Content: View>: View {
    var isButton: Bool
    var action: (() -> Void)?
    var label: String
    var content: () -> Content
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.blue, lineWidth: 2)
                .background(RoundedRectangle(cornerRadius: 16).fill(Color.white))
                .shadow(radius: 5)
            
            if isButton {
                Button(action: {
                    action?()
                }) {
                    content()
                }
                .overlay(
                    Text(label)
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .padding(4) // Adjust padding as needed
//                        .background(Color.black.opacity(0.7))
                        .cornerRadius(8)
                        .padding(8)
                        .offset(y:17)
                    , alignment: .bottom // Position text at the bottom
                )
            } else {
                content()
                    .overlay(
                        Text(label)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .padding(4) // Adjust padding as needed
                            .cornerRadius(8)
                            .padding(8)
                            .offset(y:15)
                        , alignment: .bottom // Position text at the bottom
                    )
            }
        }
    }
}


struct ThreeCategories_Previews: PreviewProvider {
    static var previews: some View {
        ThreeCategories()
    }
}
