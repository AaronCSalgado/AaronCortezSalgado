//
//  Slots.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 4/22/25.
//

import SwiftUI

struct Slots: View {
    @State var slot = [1,2,3]
    @State var slot2 = [1,2,3]
    @State var slot3 = [1,2,3]
    @State var slots: [Int] = []
    @State var slotss = 0
    @State var bet = 0.0
    @State var Numberinput: String
    @State var Number = 0.0
    @State var randomizeslot1 = 0
    @State var randomizeslot2 = 0
    @State var randomizeslot3 = 0
    var body: some View {
        VStack{
            Text("\(randomizeslot1),\(randomizeslot2),\(randomizeslot3)")
            TextField("bet money here", text: $Numberinput)
            Button{
                Number = Double(Numberinput)!
                Maybe()
                randomizeslot1 = Int.random(in: 1...3)
                randomizeslot2 = Int.random(in: 1...3)
                randomizeslot3 = Int.random(in: 1...3)
            }label: {
                Text("Lever")
            }
            
            
            
        }
        
        
            .onAppear(){
                slot.shuffle()
                slot2.shuffle()
                slot3.shuffle()
            }
    }
//  
    func Maybe(){
        if randomizeslot1 == 3 && randomizeslot2 == 3 && randomizeslot3 == 3 {
            Ch1ps += 455000
        } else {
            debt += bet*0.3
            debt += bet*0.3
        }
        if randomizeslot1 == 2 && randomizeslot2 == 2 && randomizeslot3 == 2  {
            Ch1ps += 36000
        } else {
            debt += bet*0.3
            debt += bet*0.3
        }
        if randomizeslot1 == 1 && randomizeslot2 == 1 && randomizeslot3 == 1  {
            Ch1ps += 8000
            
        } else {
            debt += bet*0.3
            debt += bet*0.3
        }
        if randomizeslot1 == 1 && randomizeslot2 == 2 && randomizeslot3 == 3  {
            bet += Number
            bet *= 25
            Ch1ps += bet
            bet -= bet
        } else {
            debt += bet*0.3
            debt += bet*0.3
        }
        
        
    }
}


#Preview {
    Slots(Numberinput: "0")
}
