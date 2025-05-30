//
//  StatView.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 5/5/25.
//

import SwiftUI

struct StatView: View {
    @State var show = false
    @State var Numberinput: String
    @State var Number = 0.0
    @State var ty = ""
    var body: some View {
        VStack{
            Text("WHAT ARE DOING, GET TO WORK.")
            Text(" DON'T JUST STAND THERE,")
            Text(" GET TO WORK.")
            if show == true{
                Text("Freedom")
                    .font(.system(size: 30))
                    .bold()
            }
            if show == false{
                HStack{
                    Text("Debt \(debt)")
                        .font(. system(size: 20))
                        .bold()
                        .padding()
                        .padding()
                        .padding()
                        .padding()
                    Text("Money \(Ch1ps)")
                        .font(. system(size: 20))
                        .bold()
                        .padding()
                        .padding()
                }
//                Text("\(ty)")
            }
            HStack{
                Button{
                    if Ch1ps == 0 {
                        ty = "You have no money to tranfer"
                    }
                    if Ch1ps < Double(Numberinput)! {
                        ty = "You don't have enough money"
                    }
                        if Ch1ps > Double(Numberinput)! {
                            
                            
                            Number = Double(Numberinput)!
                            Ch1ps -= Number
                            debt -= Number
                        }
                    
                }label: {
                    Text("Tranfer")
                }
                .font(. system(size: 20))
                .bold()
                TextField("bet money here", text: $Numberinput)
                    .font(. system(size: 20))
                    .bold()
            }
            Text("place money here to fill in your debt...\(ty)")
                .font(.system(size: 25))
                .bold()
        }
    }
    func Debt_Broken(){
        if debt <= 0{
            show = true
        }
    }
//    func moveOn(){
//        Number = Double(Numberinput)!
//        Ch1ps -= Number
//        debt -= Number
//    }
}

#Preview {
    StatView(Numberinput: "0")
}
