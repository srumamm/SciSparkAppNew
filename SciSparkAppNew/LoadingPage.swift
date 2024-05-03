//
//  LoadingPage.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/2/24.
//

import SwiftUI

struct LoadingPage: View {
    @State private var isLoadingComplete = false
    @State private var navigateToCategories = false
    
    var body: some View {
        ZStack {
            Color.darkGray
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 16) {
                Spacer()
                
                Text("SciSpark.")
                    .font(.system(size: 50, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                
                Text("Empower Curiosity, Spark Knowledge:")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                
                Text("SciSpark,")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                
                Text("Where Science Thrives.")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                
                Spacer()
                
                Image(systemName: "atom")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .foregroundColor(.white)
            }
        }
        .onAppear {
            // Simulate loading time with DispatchQueue
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                isLoadingComplete = true
                navigateToCategories = true
            }
        }
        .fullScreenCover(isPresented: $navigateToCategories, content: {
            CategoriesView()
        })
    }
}


struct LoadingPage_Previews: PreviewProvider {
    static var previews: some View {
        LoadingPage()
    }
}

