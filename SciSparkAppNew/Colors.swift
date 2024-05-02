//
//  Colors.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/2/24.
//

import Foundation
import SwiftUI

extension Color {
    static let darkGray = Color(hex: "#647C90")
    static let offWhite = Color(hex: "#FAF9F6")
    static let blackGray = Color (hex: "222222")
    
    init(hex: String, alpha: Double = 1.0) {
        var hexValue: UInt64 = 0
        
        // Convert the hexadecimal string to an integer
        Scanner(string: hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted))
            .scanHexInt64(&hexValue)
        
        // Extract red, green, blue components
        let red = Double((hexValue & 0xFF0000) >> 16) / 255.0
        let green = Double((hexValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(hexValue & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
}
