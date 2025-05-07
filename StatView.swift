//
//  StatView.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 5/5/25.
//

import SwiftUI

struct StatView: View {
    var body: some View {
        VStack{
            Text("\(debt)")
                .font(. system(size: 50))
                .bold()
            
                .padding()
                .padding()
                .padding()
                .padding()
            
            Text("\(Ch1ps)")
                .font(. system(size: 50))
                .bold()
                .padding()
                .padding()
        }
    }
}

#Preview {
    StatView()
}
