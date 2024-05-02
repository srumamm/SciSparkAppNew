//
//  CategoriesView.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/2/24.
//

import SwiftUI

struct SingularCategories: View {
    let imageName: String
    let buttonText: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 10) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.accentColor)
                
                Text(buttonText)
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                    .fixedSize(horizontal: false, vertical: true) // Allow text to wrap
                    .lineLimit(1) // Truncate text if it exceeds available space
            }
            .frame(minWidth: 350, maxHeight: 200) // Set a fixed width
            .padding(10)
            .background(Color.offWhite)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
            )
        }
    }
}

struct SingularCategories_Previews: PreviewProvider {
    static var previews: some View {
        SingularCategories(imageName: "biologysymbol", buttonText: "Chemistry") {
            // Action for the button
            print("Button tapped")
        }
    }
}
