//
//  rouletteTable.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 4/21/25.
//

import SwiftUI
import Combine
struct rouletteTable: View {
    @State var name = "Jiko"
    @State var NameMessage = ""
    @State var showAlert = false
    @State var show = false
    @State var show2 = false
    @State var show3 = false
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
    @State var ty = ""
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
            Button{
                showAlert.toggle()
            }label: {
                Text("GAME INFO")
            }
            .alert("Yooo", isPresented: $showAlert){
//                TextField("here", text: $name)
                Button("okey", action: submit)
            } message: {
                Text ("You must put the right amount of money to show your betting options")
            }
            Text("Hey \(ty)")
                .foregroundStyle(Color.myyul)
                .font(.system(size: 30))
                .bold()
            if Number >= 1500 {
                Button{
                    show = true
                    WinRoulette()
                }label: {
                    Text("Spin")
                        .font(.system(size: 30))
                        .bold()
                }
            }
            HStack{
                ZStack{
                    Rectangle()
                        .frame(width: 110, height: 50)
                        .foregroundStyle(Color.myhel)
                    Rectangle()
                        .frame(width: 100, height: 40)
                        .foregroundStyle(Color.mycol)
                    Button{
                       
                        Number = Double(Numberinput)!
                        Ch1ps -= Number
                        print(black)
                        print(red)
                        
                    }label: {
                        Text( "bet")
                        
                    }
                    .font(.system(size: 30))
                    .bold()
                }
                ZStack{
                    Rectangle()
                        .frame(width: 310, height: 50)
                        .foregroundStyle(Color.myhel)
                    Rectangle()
                        .frame(width: 300, height: 40)
                        .foregroundStyle(Color.mycol)
                    TextField("bet money here", text: $Numberinput)
                        .font(.system(size: 20))
                        .bold()
                }
//                TextField("bet money here", Value: $Numberinput, .format())
            }
                HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 70, height: 50)
                            .foregroundStyle(Color.myhel)
                        Rectangle()
                            .frame(width: 60, height: 40)
                            .foregroundStyle(Color.mycol)
                        if Number >= 1500 {
                            Picker("point row out",selection: $playerRedpicker){
                                ForEach(red, id: \.self){
                                    Text("\($0)")
                                }
                            }
                        }
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 70, height: 50)
                            .foregroundStyle(Color.myhel)
                        Rectangle()
                            .frame(width: 60, height: 40)
                            .foregroundStyle(Color.mycol)
                        if Number >= 1500 {
                            Picker("point collom out",selection: $playerblackpicker){
                                ForEach(black, id: \.self){
                                    Text("\($0)")
                                }
                            }
                        }
                    }
                    .onAppear(){
                        Number = Double(Numberinput)!
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
                ZStack{
                    Rectangle()
                        .frame(width: 110, height: 50)
                        .foregroundStyle(Color.myhel)
                    Rectangle()
                        .frame(width: 100, height: 40)
                        .foregroundStyle(Color.mycol)
                    if Number >= 1500 {
                        Button{
                            Number = Double(Numberinput)!
                            Ch1ps -= Number
                            WinRoulette2()
                            show2 = true
                        }label: {
                            Text( "evens")
                        }
                        .font(.system(size: 30))
                        .bold()
                    }
                }
                ZStack{
                    Rectangle()
                        .frame(width: 110, height: 50)
                        .foregroundStyle(Color.myhel)
                    Rectangle()
                        .frame(width: 100, height: 40)
                        .foregroundStyle(Color.mycol)
                    if Number >= 1500 {
                        Button{
                            
                            Number = Double(Numberinput)!
                            
                            WinRoulette2()
                            print(oddsNevens)
                            show2 = true
                        }label: {
                            Text( "odds")
                        }
                        .font(.system(size: 30))
                        .bold()
                    }
                }
            }
            .padding()
            VStack{
                Text(" please place a bet 1500 or Above at the 0")
                    .foregroundStyle(Color.myyul)
                    .bold()
                    .font(. system(size: 20))
                
            }
            Text("\(Ch1ps)")
                .foregroundStyle(Color.mint)
                .bold()
                .font(. system(size: 40))
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
        }
            compblack = black.randomElement()!
            compRed = red.randomElement()!
            compblack2 = black.randomElement()!
            compRed2 = red.randomElement()!
        
    }
    func submit(){
        print("Hello \(name)")
        NameMessage = "you to the dusk ymory of \(name)"
    }
    
    func WinRoulette(){
//        if Number >= 1500 {
            if show == true {
                
                
                if compblack == playerblackpicker && compRed2 == playerRedpicker {
                    Ch1ps += bet2*0.5
                    Ch1ps += bet3*0.5
                    Ch1ps += bet4*0.5
                    Ch1ps += bet5*0.5
                    Ch1ps += bet6*0.5
                    print("winner")
                    ty = "winner"
                } else {
                    debt += bet2*0.10
                    debt += bet3*0.10
                    debt += bet4*0.10
                    debt += bet5*0.10
                    debt += bet6*0.10
                    print("DEBT")
                    ty = "another loss"
                }
                if compRed == playerRedpicker && compRed2 == playerRedpicker {
                    Ch1ps += bet2*0.5
                    Ch1ps += bet3*0.5
                    Ch1ps += bet4*0.5
                    Ch1ps += bet5*0.5
                    Ch1ps += bet6*0.5
                    print("winner")
                    ty = "winner"
                }else {
                    debt += bet2*0.10
                    debt += bet3*0.10
                    debt += bet4*0.10
                    debt += bet5*0.10
                    debt += bet6*0.10
                    print("DEBT")
                    ty = "another loss"
                }
                if compblack2 == playerblackpicker && compRed2 == playerRedpicker {
                    Ch1ps += bet2
                    Ch1ps += bet3
                    Ch1ps += bet4
                    Ch1ps += bet5
                    Ch1ps += bet6
                    print("winner")
                    ty = "winner"
                }else {
                    debt += bet2*0.10
                    debt += bet3*0.10
                    debt += bet4*0.10
                    debt += bet5*0.10
                    debt += bet6*0.10
                    print("DEBT")
                    ty = "another loss"
                }
//            }
        }
        compblack = black.randomElement()!
        compRed = red.randomElement()!
        compblack2 = black.randomElement()!
        compRed2 = red.randomElement()!
    }
    func WinRoulette2(){
//        if Number >= 1500 {
            if show2 == true{
                
                
                for i in 0..<odds.count{
                    if oddsNevens == odds[i]{
                        Ch1ps += bet2
                        Ch1ps += bet3
                        Ch1ps += bet4
                        Ch1ps += bet5
                        Ch1ps += bet6
                        print("winner")
                        ty = "winner"
                    }else {
                        debt += bet2*0.10
                        debt += bet3*0.10
                        debt += bet4*0.10
                        debt += bet5*0.10
                        debt += bet6*0.10
                        print("DEBT")
                        ty = "another loss"
                    }
                }
                for i in 0..<evens.count{
                    if oddsNevens == odds[i]{
                        Ch1ps += bet2
                        Ch1ps += bet3
                        Ch1ps += bet4
                        Ch1ps += bet5
                        Ch1ps += bet6
                        print("winner")
                        ty = "winner"
                    }else {
                        debt += bet2*0.10
                        debt += bet3*0.10
                        debt += bet4*0.10
                        debt += bet5*0.10
                        debt += bet6*0.10
                        print("DEBT")
                        ty = "another loss"
                    }
                    
                }
                
//            }
        }
    }
}

#Preview {
    rouletteTable(Numberinput: "0")
}
