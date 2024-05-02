//
//  QuestionWidget+View.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/2/24.
//

import Foundation

import SwiftUI

// Question model
struct Question {
    var text: String
    var options: [String]
    var correctAnswerIndex: Int
}

struct QuestionWidget: View {
    let question: Question
    @Binding var isAnswerCorrect: Bool
    
    let questions: [Question] = [
        Question(
            text: "What is the primary analogy used to explain cells in the video?",
            options: ["A) Building blocks", "B) Bricks", "C) Legos", "D) Blocks"],
            correctAnswerIndex: 2 // Index of the correct answer
        ),
        Question(
            text: "Which of the following statements about cells is NOT true?",
            options: ["A) Cells are the building blocks of life.", "B) All living organisms are made up of cells.", "C) Cells make new cells through division.", "D) Cells can only be multicellular."],
            correctAnswerIndex: 3 // Index of the correct answer
        ),
        Question(
            text: "What is a blastocyst?",
            options: ["A) A type of plant cell", "B) A single-celled organism", "C) A group of cells surrounded by an outer shell", "D) A mature animal cell"],
            correctAnswerIndex: 2 // Index of the correct answer
        ),
        Question(
            text: "What is the function of the cytoplasm in a cell?",
            options: ["A) Produce energy A) Control the cell", "B) Control the cell", "C) Give the cell its shape and hold everything in place", "D) Surround the nucleus"],
            correctAnswerIndex: 1 // Index of the correct answer
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
    
    var body: some View {
        ZStack {
            Color.offWhite // Set background color to white
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(question.text)
                    .font(.system(size: 18))
                    .foregroundColor(.black) // Change text color to black for better visibility on white background
                    .padding()
                    .background(Color.white) // Set background color to white
                    .cornerRadius(12) // Add horizontal padding to title
                
                ForEach(0..<question.options.count, id: \.self) { index in
                    Button(action: {
                        // Check if the selected answer is correct
                        isAnswerCorrect = index == question.correctAnswerIndex
                    }) {
                        Text(question.options[index])
                            .padding()
                            .foregroundColor(.white)
                            .background(isAnswerCorrect && index == question.correctAnswerIndex ? Color.green : Color.blue)
                            .cornerRadius(8)
                    }
                    .padding(.horizontal) // Add horizontal padding to buttons
                }
                
                Spacer() // Add spacer to push content to the top
            }
        }
        .cornerRadius(20) // Add horizontal padding to title
    }
}
