//
//  rouletteTable.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 4/21/25.
//

import SwiftUI
import Combine
struct rouletteTable: View {
    @State var black = ["A","B","C","D"]
    @State var red = [1,2,3,4]
    @State var compblack = ""
    @State var compRed = 0
    @State var playerblackpicker = ""
    @State var playerRedpicker = 0
    @State var bet = 0.0
    @State var bet2 = 0.0
    @State var bet3 = 0.0
    @State var bet4 = 0.0
    @State var bet5 = 0.0
    @State var bet6 = 0.0
    @State var people = Int.random(in: 0...5)
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear(){
                compblack = black.randomElement()!
                compRed = red.randomElement()!
                print(compblack,compRed)
            }
    }
    
        
    
    
    func playCount(){

        if people > 0 {
            
        }
        
    }
}

#Preview {
    rouletteTable()
}
