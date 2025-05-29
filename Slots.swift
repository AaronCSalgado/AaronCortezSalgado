//
//  Slots.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 4/22/25.
//

import SwiftUI

struct Slots: View {
    @State var name = "Jiko"
    @State var NameMessage = ""
    @State var showAlert = false
    @State var act = false
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
        ZStack{
            Rectangle()
            .frame(width: 402, height: 800)
            .background(Color.black)
            Rectangle()
                .frame(width: 400, height: 800)
                .foregroundStyle(Color.myrut)
                .background(Color.black)
            VStack{
                VStack{
                    Image("leverr")
                        .resizable()
                        
                }
                .frame(width:200, height:200)
                ZStack{
                    
                    Rectangle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.mylik)
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 30, height: 80)
                                .foregroundColor(.gray)
                            Text("\(randomizeslot1)")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundStyle(.blue)
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 30, height: 80)
                                .foregroundColor(.gray)
                            Text("\(randomizeslot2)")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundStyle(.blue)
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 30, height: 80)
                                .foregroundColor(.gray)
                            Text("\(randomizeslot3)")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundStyle(.blue)
                        }
                    }
                    
                }
                Text(" money")
                    .foregroundStyle(Color.mint)
                    .bold()
                Text("\(Ch1ps)")
                    .foregroundStyle(Color.mint)
                    .bold()
                    .font(. system(size: 40))
//                    .padding(.top, 100)
                HStack{
                    Button{
                        bet = Number
                        act = true
                        Number = Double(Numberinput)!
                        Maybe()
                        randomizeslot1 = Int.random(in: 1...3)
                        randomizeslot2 = Int.random(in: 1...3)
                        randomizeslot3 = Int.random(in: 1...3)
                    }label: {
                        Text("Lever")
                    }
                    .font(.system(size: 30))
                    .bold()
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 310, height: 50)
                            .foregroundStyle(Color.myhel)
                        Rectangle()
                            .frame(width: 300, height: 40)
                            .foregroundStyle(Color.mycol)
                        TextField("bet money here", text: $Numberinput)
                            .font(.system(size: 25))
                            .bold()
                    }
                }
                Button{
                    showAlert.toggle()
                }label: {
                    Text("GAME INFO")
                }
                .font(.system(size: 25))
                .bold()
                .alert("Yooo", isPresented: $showAlert){
                    Button("okey", action: submit)
                } message: {
                    Text ("You must place a bet 4000 or Above at the 0 then pull the lever put the right amount of money to start winning money")
                }
                Text(" ")
                    .foregroundStyle(Color.myyul)
                    .bold()
                    .font(. system(size: 20))
            }
            
            
                .onAppear(){
                    slot.shuffle()
                    slot2.shuffle()
                    slot3.shuffle()
                }
            
        }
       
    }
    func submit(){
        print("Hello \(name)")
        NameMessage = "you to the dusk ymory of \(name)"
    }
//
    func Maybe(){
        
            if act == true {
                if Number >= 4000 {
                
                if randomizeslot1 == 3 && randomizeslot2 == 3 && randomizeslot3 == 3 {
                    Ch1ps += 40000
                } else {
                    debt += bet*0.3
                    debt += bet*0.3
                }
                if randomizeslot1 == 2 && randomizeslot2 == 2 && randomizeslot3 == 2  {
                    Ch1ps += 3000
                } else {
                    debt += bet*0.3
                    debt += bet*0.3
                }
                if randomizeslot1 == 1 && randomizeslot2 == 1 && randomizeslot3 == 1  {
                    Ch1ps += 1000
                    
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
                
                act = false
            }
        }
    }
}


#Preview {
    Slots(Numberinput: "0")
}
