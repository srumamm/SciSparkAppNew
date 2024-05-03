//
//  CommunityView.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/3/24.
//

import SwiftUI
import AVFoundation

struct ForumMessage: Identifiable {
    let id = UUID()
    let category: String
    let username: String
    let message: String
}

struct CommunityForumView: View {
    @State private var selectedCategory = 0 // Changed to index for easier array access
    @State private var newMessageText = ""
    
    // Sample data for messages
    @State private var messages: [ForumMessage] = [
        ForumMessage(category: "Science Learning", username: "CuriousMind", message: "Hey everyone! Let's explore the fascinating world of science together. Whether it's conducting fun experiments at home, learning about the wonders of the universe, or diving into the depths of biology, there's always something new to discover. Share your favorite science-related activities and resources that make learning exciting for middle school students! 🔬🚀"),
        ForumMessage(category: "Science Learning", username: "ScienceFanatic", message: "I'm passionate about making science fun and accessible for all students. From interactive online simulations to engaging science documentaries, there are countless ways to spark curiosity and inspire young minds. Let's exchange ideas and strategies for creating enriching science learning experiences that captivate and motivate middle schoolers! 🌟"),
        ForumMessage(category: "Fun Activities", username: "AdventureSeeker", message: "Who says learning can't be fun? Let's brainstorm creative ways to blend education with entertainment. Whether it's organizing a science-themed scavenger hunt, hosting a virtual science trivia night, or watching educational YouTube channels together, let's make learning an adventure! Share your innovative ideas and let's inspire each other to make science learning irresistible for middle school students! 🎉"),
        ForumMessage(category: "STEM Challenges", username: "TechEnthusiast", message: "Calling all future scientists and engineers! Let's tackle exciting STEM challenges that encourage critical thinking and problem-solving skills. Whether it's designing paper airplanes for aerodynamics experiments, building DIY robots from household materials, or coding simple games, there's no limit to what we can create together. Join the fun and unleash your inner innovator! 💡"),
        ForumMessage(category: "Fun Activities", username: "ArtsyEducator", message: "Art is not just about colors and shapes; it's a tool for learning and self-expression! Let's explore the intersection of art and science by creating visually stunning projects that teach scientific concepts. Whether it's designing kaleidoscopes to learn about light and optics or crafting sculptures inspired by biology, let's unleash our creativity and make learning a masterpiece! 🎨"),
        ForumMessage(category: "STEM Challenges", username: "InquisitiveMind", message: "Dive deep into the world of technology and engineering! Let's embark on thrilling STEM challenges that push the boundaries of innovation. Whether it's building bridges to test structural integrity, constructing Rube Goldberg machines to explore physics concepts, or programming autonomous vehicles, there's no shortage of exciting projects to tackle. Let's ignite our passion for STEM and build a brighter future together! 🔧"),
    ]
    
    private let categories = ["Science Learning", "Fun Activities", "STEM Challenges"]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.offWhite
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    // Community Forum on top of Lavender Bar
                    HStack{
                        Text("Community Forum")
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                    }
                    .background(Color.blackGray)
                    
                    // Category buttons
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(categories.indices, id: \.self) { index in
                                Button(action: {
                                    self.selectedCategory = index
                                }) {
                                    Text(categories[index])
                                        .foregroundColor(.white)
                                        .padding(.vertical, 10)
                                        .frame(minWidth: 150) // Set a minWidth for the buttons to make them equal
                                        .background(
                                            RoundedRectangle(cornerRadius: 30)
                                                .fill(selectedCategory == index ? Color.blue : Color.gray)
                                        )
                                }
                            }
                        }
                        .padding()
                    }
                    
                    // Messages list with white text box
                    ScrollView {
                        VStack(spacing: 12) {
                            ForEach(messages.filter { $0.category == categories[selectedCategory] }) { message in
                                MessageRow(message: message)
                            }
                        }
                        .padding()
                    }
                    
                    Spacer()
                    
                    // Text input and post button
                    HStack {
                        TextField("Type your message here...", text: $newMessageText)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading)
                        
                        Button(action: {
                            // Action to send message
                            if !self.newMessageText.isEmpty {
                                let newMessage = ForumMessage(category: self.categories[self.selectedCategory], username: "YourUsername", message: self.newMessageText)
                                self.messages.append(newMessage)
                                self.newMessageText = "" // Reset the text field after posting the message
                            }
                        }) {
                            Text("Post")
                        }
                        .padding(.trailing)
                    }
                    .frame(height: 50)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.horizontal)
                }
                
                // HStack at the bottom with buttons
                HStack {
                    Spacer()
                    
                    // Button 1
                    Button(action: {
                        goToCategoriesView()
                    }) {
                        Image(systemName: "square.grid.2x2.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.leading, 30)
                            .offset(y: -15)
                    }
                    
                    Spacer()
                    
                    // Button 2
                    Button(action: {
                        goToCategoriesView()
                    }) {
                        Image(systemName: "square.grid.2x2.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.leading, 30)
                            .offset(x: 0, y: -15)
                    }
                    
                    Spacer()
                    
                    // Button 3
                    Button(action: {
                        goToVideosView()
                    }) {
                        Image(systemName: "square.grid.2x2.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.leading, 50)
                            .offset(x: -30, y: -15)
                    }
                    
                    Spacer()
                }
                .padding(.top, 30)

                .background(Color.black)
                .padding(.top, 30)
                .offset(y: 380)
            }
        }
    }
    
    private func goToCategoriesView() {
        let categoriesView = CategoriesView()
        UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: categoriesView)
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }

    
    private func gotoArticleView() {
        let gotoArticleView = CategoriesView()
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


struct MessageRow: View {
    let message: ForumMessage
    @State private var isSpeaking = false // Track whether message is being spoken
    let synthesizer = AVSpeechSynthesizer() // Speech synthesizer instance
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill") // Placeholder for user image
                .resizable()
                .frame(width: 40, height: 40)
                .padding()
            
            VStack(alignment: .leading) {
                Text("\(message.username):")
                    .font(.headline)
                Text(message.message)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 2)
            }
            
            Spacer()
            
            Button(action: {
                if !isSpeaking {
                    speakMessage(message.message)
                    isSpeaking = true
                }
            }) {
                Image(systemName: "speaker.3.fill")
                    .foregroundColor(.blue)
            }
            .padding()
        }
    }
    
    func speakMessage(_ message: String) {
        let utterance = AVSpeechUtterance(string: message)
        synthesizer.speak(utterance)
    }
}

struct CommunityForumView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityForumView()
    }
}
