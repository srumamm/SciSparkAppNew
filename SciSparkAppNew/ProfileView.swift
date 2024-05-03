//
//  ProfileView.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/3/24.
//


import SwiftUI

struct FinanceLit: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.darkGray
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    // Community Forum on top of Lavender Bar
                    HStack{
                        Text("Community Forum")
                            .font(.title2)
                            .foregroundColor(Color.blackGray)
                            .padding()
                        Spacer()
                    }
                    .background(Color.blackGray)
                    
                    
                    
                    Text("Investing 101")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(Color.blackGray)
                        .padding(.leading, 15)
                        .offset(x:-100, y:10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            Button(action: {
                                                            // Action for the third image button
                            }) {
                                Image("IMG_0537")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                            Button(action: {
                                                            // Action for the third image button
                            }) {
                                
                                Image("IMG_2869")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                            Button(action: {
                                                            // Action for the third image button
                            }) {
                                
                                Image("IMG_9299")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                            Button(action: {
                                                            // Action for the third image button
                            }) {
                                
                                Image("Maternity")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Text("Gender Gap")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(Color.darkGray)
                        .padding(.leading, 15)
                        .offset(x:-100, y:10)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            Button(action: {
                                                            // Action for the third image button
                            }) {
                                Image("IMG_1476")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 170, height: 170)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }
                            Button(action: {
                                                            // Action for the third image button
                            }) {
                                
                                Image("IMG_7896")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                            Button(action: {
                                                            // Action for the third image button
                            }) {
                                
                                Image("IMG_5567")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                            
                            Button(action: {
                                                            // Action for the third image button
                            }) {
                                
                                Image("IMG_4122")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Text("Salary Negotiation")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(Color.darkGray)
                        .padding(.leading, 15)
                        .offset(x:-60, y:10)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            Button(action: {
                                                            // Action for the third image button
                            }) {
                                Image("IMG_1476")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                            
                            Button(action: {
                                                            // Action for the third image button
                            }) {
                                
                                Image("IMG_7896")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                            
                            Button(action: {
                                                            // Action for the third image button
                            }) {
                                
                                Image("IMG_5567")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                            
                            Button(action: {
                                                            // Action for the third image button
                            }) {
                                
                                Image("IMG_4122")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }
                        }
                        .padding(.horizontal)
                    }
                    HStack {
                        Button(action: {
                            // Navigate to Lightbulb page
                        }) {
                            Image(systemName: "message")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.black)
                                .padding()
                        }
                        
                        Spacer()
                        
//                        NavigationLink(destination: BankAccountView().navigationBarBackButtonHidden(true)) {
                            Image(systemName: "dollarsign.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25) // Adjust the size as needed
                                .foregroundColor(.black)
                                .padding()
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            // Navigate to Lightbulb page
                        }) {
                            Image(systemName: "lightbulb.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25) // Adjust the size as needed
                                .foregroundColor(.black)
                                .padding()
                        }
                    }
                    .frame(height: 70) // Set the height of the bottom bar
                    .padding(.horizontal) // Add padding on the horizontal edges
                    .background(Color.darkGray)
                    
                }
            }
            .background(Color.darkGray)
            .edgesIgnoringSafeArea(.bottom) // Ensures the bottom bar extends to the bottom edge of the screen
            .padding(.top, -20) // Push the content up a little bit
        }
//    }
}


        


#Preview {
    FinanceLit()
}

