//
//  Presets.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 4/3/25.
//

import Foundation
import SwiftUI
extension Text {
    func CustomTextOne() -> some View {
        self.font(.custom("Geoform-HeavyItalic", size: 50))
            .bold()
    }
    func CustomTexttwo() -> some View {
        self.font(.custom("Geoform-HeavyItalic", size: 25))
            .bold()
    }
    
}
extension Color {
    public static var myColor1: Color {
        return Color(UIColor(red: 5000.0/255.0, green: 100.0/255.0, blue: 300.0/255.0, alpha: 1.0))
    }
    public static var myColor2: Color {
        return Color(UIColor(red: 50.0/255.0, green: 140.0/255.0, blue: 205.0/255.0, alpha: 1.0))
    }
}
