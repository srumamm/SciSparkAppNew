//
//  AllofCategories.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/2/24.
//

import SwiftUI

struct CategoriesView: View {
    
    @State private var selectedIndex = 0
    @State private var selectedTab: Int? = nil

    
    var body: some View {
        ZStack {
            Color.darkGray
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Hello")
                            .font(.title)
                            .foregroundColor(.white)
                        Text("Welcome to SciSpark.")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .padding(.top,40)
                    
                    Spacer()
                }
                .padding()
                .background(Color.gray)
                
                Text("Categories")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.trailing)
                
                
                VStack(spacing: 16) {
                    // Use the SingularCategories button with the action parameter
                    SingularCategories(imageName: "biologysymbol", buttonText: "Biology") {
                        // Handle the action for Biology button tap
                        goToVideosView()
                    }
                    .onTapGesture {
                        // Handle tap gesture for Biology button
                        goToVideosView()
                    }
                    
                    SingularCategories(imageName: "chemistrysymbol", buttonText: "Chemistry") {
                        // Handle Chemistry button tap
                    }
                    .onTapGesture {
                        // Handle tap gesture for Chemistry button
                    }
                    
                    SingularCategories(imageName: "globe", buttonText: "Geology") {
                        // Handle Geology button tap
                        
                    }
                    .onTapGesture {
                        // Handle tap gesture for Geology button
                    }
                    
                    SingularCategories(imageName: "sun", buttonText: "Astronomy") {
                        // Handle Astronomy button tap
                        
                    }
                    .onTapGesture {
                        // Handle tap gesture for Astronomy button
                    }
                }
                .padding(.bottom) // Add padding to the bottom
                
                Spacer() // Add spacer to push content to the top
                
                
                HStack {
                                    Spacer()
                                    
                                    // Button 1
                                    Button(action: {
                                        goToCategoriesView()
                                    }) {
                                        Image(systemName: "square.grid.2x2.fill")
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .padding(.leading,30)
                                            .offset(y:10)
                                    }
                                    
                                    Spacer()
                                    
                                    // Button 2
                                    Button(action: {
                                        goToCategoriesView()
                                    }) {
                                        Image(systemName: "square.grid.2x2.fill")
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .padding(.leading,30)
                                            .offset(x:0,y:10)

                                    }
                                    
                                    Spacer()
                                    
                                    // Button 3
                                    Button(action: {
                                        gotoArticleView()
                                    }) {
                                        Image(systemName: "square.grid.2x2.fill")
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .padding(.leading,50)
                                            .offset(x:-30,y:10)

                                    }
                                    
                                    Spacer()
                                }
                                .background(Color.black)
                                .padding(.top,20)
                                .offset(y:-40)

            }
        }
    }
    
    // Function to navigate back to CategoriesView
    private func goToCategoriesView() {
        let categoriesView = CommunityForumView()
        UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: categoriesView)
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }

    
    private func gotoArticleView() {
        let gotoArticleView = CommunityForumView()
        UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: gotoArticleView)
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
    // Function to navigate to VideosView
    private func goToVideosView() {
        let videosView = ThreeCategories()
        UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: videosView)
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
