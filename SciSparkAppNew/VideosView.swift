//
//  VideosView.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/2/24.
//

import Foundation
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
            text: "Which of the following statements about cells is NOT true?",
            options: ["A) Cells are the building blocks of life.", "B) All living organisms are made up of cells.", "C) Cells can only be multicellular.", "D) Cells make new cells through division."],
            correctAnswerIndex: 2 // Index of the correct answer
        ),
        Question(
            text: "What is a blastocyst?",
            options: ["A) A type of plant cell", "B) A single-celled organism", "C) A group of cells surrounded by an outer shell", "D) A mature animal cell"],
            correctAnswerIndex: 2 // Index of the correct answer
        ),
        Question(
            text: "What is the function of the cytoplasm in a cell?",
            options: ["A) Control the cell", "B) Produce energy", "C) Give the cell its shape and hold everything in place", "D) Surround the nucleus"],
            correctAnswerIndex: 2 // Index of the correct answer
        ),
        Question(
            text: "Which organelle is described as the 'brain' of the cell?",
            options: ["A) Mitochondria", "B) Golgi apparatus", "C) Nucleus", "D) Cytoplasm"],
            correctAnswerIndex: 2 // Index of the correct answer
        ),
        Question(
            text: "What is the primary function of the cell membrane?",
            options: ["A) Synthesizing proteins", "B) Controlling the movement of substances in and out of the cell", "C) Providing mechanical support", "D) Producing energy"],
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
    
    var body: some View {
        ZStack {
            Color.darkGray
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Cellular Adventures: Exploring Structure and Function")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                
                Videotrying()
                
                QuestionWidget(question: questions[currentQuestionIndex], isAnswerCorrect: $isAnswerCorrect)
                
                Spacer()
                
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
            }
            .padding()
        }
    }
}


struct VideoView_Previews: PreviewProvider {
        static var previews: some View {
            VideosView()
      
        }
    }
