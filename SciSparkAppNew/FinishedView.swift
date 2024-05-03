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
                Text("Congratulations! You have finished the quiz.")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button(action: {

                    let categoriesView = CategoriesView()
                    UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: categoriesView)
                    UIApplication.shared.windows.first?.makeKeyAndVisible()
                }) {
                    Text("Go back to lessons")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct FinishedView_Previews: PreviewProvider {
    static var previews: some View {
        FinishedView(isPresented: .constant(false))
    }
}
