//
//  FinishedView.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/2/24.
//

import SwiftUI

struct FinishedView: View {
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
            }

        }
        .navigationBarHidden(true)

    }
}


#Preview {
    FinishedView()
}
