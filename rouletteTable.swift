//
//  rouletteTable.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 4/21/25.
//

import SwiftUI
import Combine
struct rouletteTable: View {
    @State var oddsNevens = Int.random(in: 1...36)
    @State var spinNumber: Int = 0
    @State var black = [2,4,6,8,12,14,16,18,20,22,24,26,28,29,32,34,36]
    @State var red = [1,3,5,7,9,10,11,13,15,17,19,21,23,25,27,30,31,33,35]
    @State var evens = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36]
    @State var odds = [1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35]
    @State var compblack = 0
    @State var compRed = 0
    @State var compblack2 = 0
    @State var compRed2 = 0
    @State var playerblackpicker = 0
    @State var playerRedpicker = 0
    @State var bet = 0.0
    @State var bet2 = 0.0
    @State var bet3 = 0.0
    @State var bet4 = 0.0
    @State var bet5 = 0.0
    @State var bet6 = 0.0
    @State var people = Int.random(in: 0...5)
    @State var Numberinput: String
    @State var Number = 0.0
    var body: some View {
        VStack{
            
            TextField("bet money here", text: $Numberinput)
//            TextField()
            Button{
                Number = Double(Numberinput)!
                
                WinRoulette()
                
            }label: {
                Text( "bet")
            }
//            TextField("Betting amount", in: bet)
                HStack{
                    Picker("point row out",selection: $playerRedpicker){
                        ForEach(red, id: \.self){
                            Text("\($0)")
                        }
                    }
                    Picker("point collom out",selection: $playerblackpicker){
                        ForEach(black, id: \.self){
                            Text("\($0)")
                        }
                    }
                    .onAppear(){
                        compblack = black.randomElement()!
                        compRed = red.randomElement()!
                        compblack2 = black.randomElement()!
                        compRed2 = red.randomElement()!
                        print(compblack,compRed)
                        print(compblack2,compRed2)
                        print(oddsNevens)
                        playerBet()
                    }
                    
            }
            HStack{
                Button{
                    WinRoulette2()
                }label: {
                    Text( "evens")
                }
                Button{
                    WinRoulette2()
                    print(oddsNevens)
                }label: {
                    Text( "odds")
                }
            }
        }
    }
    func playerBet(){
        if people >= 0 {
//            Text("they're afraid of you")
        } else if people == 1 {
            bet2 = Double.random(in: 410...5000)
        }else if people == 2 {
            bet2 = Double.random(in: 410...5000)
            bet3 = Double.random(in: 200...3400)
        }else if people == 3 {
            bet2 = Double.random(in: 410...5000)
            bet3 = Double.random(in: 200...3400)
            bet4 = Double.random(in: 730...9100)
        }else if people == 4 {
            bet2 = Double.random(in: 410...5000)
            bet3 = Double.random(in: 200...3400)
            bet4 = Double.random(in: 730...9100)
            bet5 = Double.random(in: 580...6700)
        }else if people == 5 {
            bet2 = Double.random(in: 410...5000)
            bet3 = Double.random(in: 200...3400)
            bet4 = Double.random(in: 730...9100)
            bet5 = Double.random(in: 580...6700)
            bet6 = Double.random(in: 620...7500)
            compblack = black.randomElement()!
            compRed = red.randomElement()!
            compblack2 = black.randomElement()!
            compRed2 = red.randomElement()!
        }
    }
    func WinRoulette(){
        if compblack == playerblackpicker && compRed2 == playerRedpicker {
            Ch1ps += bet2*0.5
            Ch1ps += bet3*0.5
            Ch1ps += bet4*0.5
            Ch1ps += bet5*0.5
            Ch1ps += bet6*0.5
            print("winner")
        } else {
            debt += bet2*0.10
            debt += bet3*0.10
            debt += bet4*0.10
            debt += bet5*0.10
            debt += bet6*0.10
            print("DEBT")
        }
        if compRed == playerRedpicker && compRed2 == playerRedpicker {
            Ch1ps += bet2*0.5
            Ch1ps += bet3*0.5
            Ch1ps += bet4*0.5
            Ch1ps += bet5*0.5
            Ch1ps += bet6*0.5
            print("winner")
        }else {
            debt += bet2*0.10
            debt += bet3*0.10
            debt += bet4*0.10
            debt += bet5*0.10
            debt += bet6*0.10
            print("DEBT")
        }
        if compblack2 == playerblackpicker && compRed2 == playerRedpicker {
            Ch1ps += bet2
            Ch1ps += bet3
            Ch1ps += bet4
            Ch1ps += bet5
            Ch1ps += bet6
            print("winner")
        }else {
            debt += bet2*0.10
            debt += bet3*0.10
            debt += bet4*0.10
            debt += bet5*0.10
            debt += bet6*0.10
            print("DEBT")
        }
        compblack = black.randomElement()!
        compRed = red.randomElement()!
        compblack2 = black.randomElement()!
        compRed2 = red.randomElement()!
    }
    func WinRoulette2(){
        for i in odds{
            if oddsNevens == odds[Int(i)]{
                Ch1ps += bet2
                Ch1ps += bet3
                Ch1ps += bet4
                Ch1ps += bet5
                Ch1ps += bet6
                print("winner")
            }else {
                debt += bet2*0.10
                debt += bet3*0.10
                debt += bet4*0.10
                debt += bet5*0.10
                debt += bet6*0.10
                print("DEBT")
            }
        }
        for i in evens{
            if oddsNevens == odds[Int(i)]{
                Ch1ps += bet2
                Ch1ps += bet3
                Ch1ps += bet4
                Ch1ps += bet5
                Ch1ps += bet6
                print("winner")
            }else {
                debt += bet2*0.10
                debt += bet3*0.10
                debt += bet4*0.10
                debt += bet5*0.10
                debt += bet6*0.10
                print("DEBT")
            }
        }
    }
}

#Preview {
    rouletteTable(Numberinput: "0")
}
