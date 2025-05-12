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
    var body: some View {
        VStack{
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
            }
            HStack{
                
                Button{
                    Number = Double(Numberinput)!
                    Ch1ps -= Number
                    debt -= Number
                }label: {
                    Text("Tranfer")
                }
                TextField("bet money here", text: $Numberinput)
            }
        }
    }
    func Debt_Broken(){
        if debt <= 0{
            show = true
        }
    }
}

#Preview {
    StatView(Numberinput: "0")
}
