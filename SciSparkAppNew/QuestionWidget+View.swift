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
            options: ["A) Produce energy A) Control the cell", "B) Control the cell", "C) Give the cell its shape", "D) Surround the nucleus"],
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
    
    let maxFontSize: CGFloat = 20 // Maximum font size
       
       var body: some View {
           ZStack {
               Color.offWhite // Set background color to white
                   .edgesIgnoringSafeArea(.all)
               
               VStack(alignment: .leading, spacing: 20) {
                   Text(question.text)
                       .font(.system(size: fontSizeForQuestion(question.text)))
                       .foregroundColor(.black)
                       .padding()
                       .cornerRadius(12)
                       .fixedSize(horizontal: false, vertical: true) // Allow multiline text
                   
                   ForEach(0..<question.options.count, id: \.self) { index in
                       Button(action: {
                           // Check if the selected answer is correct
                           isAnswerCorrect = index == question.correctAnswerIndex
                       }) {
                           Text(question.options[index])
                               .font(.system(size: fontSizeForOption(question.options[index])))
                               .padding()
                               .foregroundColor(.white)
                               .background(isAnswerCorrect && index == question.correctAnswerIndex ? Color.green : Color.blue)
                               .cornerRadius(8)
                               .fixedSize(horizontal: false, vertical: true) // Allow multiline text for options
                       }
                       .padding(.horizontal) // Add horizontal padding to buttons
                   }
                   
                   Spacer() // Add spacer to push content to the top
               }
           }
           .cornerRadius(20) // Add horizontal padding to title
       }
       
       // Function to calculate font size dynamically based on the length of the question text
       private func fontSizeForQuestion(_ questionText: String) -> CGFloat {
           let questionLength = questionText.count
           let maxLengthForFontSize = 60 // Adjust this value as needed
           
           if questionLength > maxLengthForFontSize {
               return maxFontSize - CGFloat(questionLength - maxLengthForFontSize)
           } else {
               return maxFontSize
           }
       }
       
       // Function to calculate font size dynamically based on the length of the option text
       private func fontSizeForOption(_ optionText: String) -> CGFloat {
           let optionLength = optionText.count
           let maxLengthForFontSize = 40 // Adjust this value as needed
           
           if optionLength > maxLengthForFontSize {
               return maxFontSize - CGFloat(optionLength - maxLengthForFontSize)
           } else {
               return maxFontSize
           }
       }
   }
