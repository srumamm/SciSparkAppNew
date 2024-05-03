//
//  VideosView.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/2/24.
//
import SwiftUI

struct VideosView: View {
    // State variable to track the current question index
    @State private var currentQuestionIndex = 0
    
    let questions: [Question] = [
        Question(
            text: "What is the primary analogy used to explain cells in the video?",
            options: ["A) Building blocks", "B) Bricks", "C) Legos", "D) Blocks"],
            correctAnswerIndex: 2 // Index of the correct answer
        ),
        Question(
            text: "What is a blastocyst?",
            options: ["A) A type of plant cell", "B) A single-celled organism", "C) Cells surrounded by an outer shell", "D) A mature animal cell"],
            correctAnswerIndex: 2 // Index of the correct answer
        ),
        Question(
            text: "What is the function of the cytoplasm in a cell?",
            options: ["A) Produce energy", "B) Control the cell", "C) Give the cell its shape", "D) Surround the nucleus"],
            correctAnswerIndex: 3 // Index of the correct answer
        ),
        Question(
            text: "Which organelle is described as the 'brain' of the cell?",
            options: ["A) Mitochondria", "B) Golgi apparatus", "C) Nucleus", "D) Cytoplasm"],
            correctAnswerIndex: 2 // Index of the correct answer
        ),
        Question(
            text: "What is the primary function of the cell membrane?",
            options: ["A) Synthesizing proteins", "B) Controlling the substances", "C) Providing mechanical support", "D) Producing energy"],
            correctAnswerIndex: 1 // Index of the correct answer
        ),
        Question(
            text: "Which additional part do plant cells have that animal cells do not?",
            options: ["A) Chloroplasts", "B) Mitochondria", "C) Ribosomes", "D) Lysosomes"],
            correctAnswerIndex: 0 // Index of the correct answer
        ),
        Question(
            text: "What is the primary function of chloroplasts in plant cells?",
            options: ["A) Producing energy", "B) Synthesizing proteins", "C) Creating sugar through photosynthesis", "D) Breaking down cellular waste"],
            correctAnswerIndex: 2 // Index of the correct answer
        ),
        Question(
            text: "What are stem cells primarily known for?",
            options: ["A) Creating rigid cell walls", "B) Providing mechanical support", "C) Replacing damaged or missing cells in the body", "D) Producing energy molecules"],
            correctAnswerIndex: 2 // Index of the correct answer
        ),
        Question(
            text: "How are plant cells being utilized to benefit the environment?",
            options: ["A) Producing energy", "B) Making biodegradable plastics", "C) Creating synthetic materials", "D) Filtering air pollutants"],
            correctAnswerIndex: 1 // Index of the correct answer
        )
    ]
    
    // State variable to track whether the answer is correct
    @State private var isAnswerCorrect = false
    @State private var quizFinished = false
    @State private var showFinishedView = false

    
    var body: some View {
        NavigationView {
            ZStack {
                Color.darkGray
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Cellular Adventures: Exploring Structure and Function")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(.white)
                    
                    Videotrying()
                    
                    QuestionWidget(question: questions[currentQuestionIndex], isAnswerCorrect: $isAnswerCorrect)
                    
                    Spacer()
                    
                    if currentQuestionIndex < questions.count - 1 {
                        Button(action: {
                            // Reset isAnswerCorrect state
                            isAnswerCorrect = false
                            
                            // Move to the next question
                            if currentQuestionIndex < questions.count - 1 {
                                currentQuestionIndex += 1
                            }
                        }) {
                            Text("Next Question")
                                .font(.headline)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(8)
                        }
                    } else {
                        Button(action: {
                            showFinishedView = true
                        }) {
                            Text("Show Finished View")
                                .font(.headline)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(8)
                        }
                    }
                }
                .padding()
                if showFinishedView {
                    FinishedView(isPresented: $showFinishedView)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.white.opacity(0.7))
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

struct VideosView_Previews: PreviewProvider {
    static var previews: some View {
        VideosView()
    }
}
