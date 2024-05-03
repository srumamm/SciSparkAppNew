//
//  FinishedView.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/2/24.
//

import SwiftUI

struct FinishedView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack {
            Color.darkGray
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Congratulations!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)
                
                Text("You've Finished the Quiz!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 50)
                
                Image("cutey")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                Button(action: {

                                   let categoriesView = CategoriesView()
                                   UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: categoriesView)
                                   UIApplication.shared.windows.first?.makeKeyAndVisible()
                               }) {
                    Text("Back to Lessons")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blackGray)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct FinishedView_Previews: PreviewProvider {
    static var previews: some View {
        FinishedView(isPresented: .constant(false))
    }
}
