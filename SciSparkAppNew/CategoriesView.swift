//
//  AllofCategories.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/2/24.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        ZStack {
            Color.blackGray
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Hello")
                            .font(.title)
                            .foregroundColor(.white)
                        Text("Welcome to SciSpark.")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .padding(.bottom)
                    
                    Spacer()
                    
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.black)
                .cornerRadius(16) // Rounded corners
                
                Text("Categories")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.trailing, 20)
                
                ScrollView {
                    VStack(spacing: 16) {
                        SingularCategories(imageName: "biologysymbol", buttonText: "Biology") {
                            // Handle Biology button tap
                        }
                        
                        SingularCategories(imageName: "chemistrysymbol", buttonText: "Chemistry") {
                            // Handle Chemistry button tap
                        }
                        
                        SingularCategories(imageName: "globe", buttonText: "Geology") {
                            // Handle Geology button tap
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
