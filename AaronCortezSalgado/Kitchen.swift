//
//  Kitchen.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 4/1/25.
//

import SwiftUI
import Combine
struct Kitchen: View {
//    @State var food = ["fries","salad","steak","burger","fried chicken","onion rings","shimps"]
    
    @State var show = true
    @State var show2 = false
    @State var show3 = true
    @State var show4 = false
    @State var show5 = true
    @State var show6 = false
    @State var show7 = true
    @State var show8 = false
    @State var show9 = true
    @State var show10 = false
    @State var show11 = true
    @State var show12 = false
    @State var open = true
    @State var close = false
    @State var xPos = 0.0
    @State var yPos = 0.0

//    @State var Drinks = ["mix","beer","shot","soda","water"]
    @State var DrinksOrdered = ""
    @State var table = ("Order")
   @State var serve = 0
    @State var paid = 0.0
//    @State var Ch1ps = 0.0
    var body: some View {
//        NavigationView{
            ZStack{
                VStack{
                    Text("\(Ch1ps)")
                        .foregroundStyle(Color.mint)
                        .bold()
                        .font(. system(size: 40))
                    Text("Find the food")
                        .font(. system(size: 20))
                }
                .padding(.bottom, 20)
                VStack{
                   
                    if open == true {
                        Button{
                            open = false
                            close = true
                            print("\(serve)")
                            cook()
                            show.toggle()
                            show2.toggle()
                            show3.toggle()
                            show4.toggle()
                            show5.toggle()
                            show6.toggle()
                            show7.toggle()
                            show8.toggle()
                            show9.toggle()
                            show10.toggle()
                            
                        } label: {
                            Text("\(table)")
                                .font(. system(size: 20))
                                .bold()
                        }
                    }
                    HStack{
                        if serve == 5 {
                            if close == true {
                                Button{
                                    open = true
                                    close = false
                                    severed()
                                    print(serve)
                                }label: {
                                    Text("Send")
                                        .font(. system(size: 20))
                                        .bold()
                                }
                            }
                        }
                    }
                    .onAppear() {
                    }
                }
                
                if show2 {
                    FindFood()
                        .onTapGesture {
                            show.toggle()
                            show2.toggle()
                            serve += 1
                        }
                }
                if show4 {
                    FindFoodTwo()
                        .onTapGesture {
                            show3.toggle()
                            show4.toggle()
                            serve += 1
                        }
                }
                if show6 {
                    FindFoodThree()
                        .onTapGesture {
                            show5.toggle()
                            show6.toggle()
                            serve += 1
                        }
                }
                if show8 {
                    FindFoodThree()
                        .onTapGesture {
                            show7.toggle()
                            show8.toggle()
                            serve += 1
                        }
                }
                if show10 {
                    FindFoodThree()
                        .onTapGesture {
                            show9.toggle()
                            show10.toggle()
                            serve += 1
                        }
                }
            }
    }
    func cook() {
  let goh = Int.random(in: 1...100)
        if goh <= 80 {
            paid *= 15
        }
    }
    func severed(){
        print(serve)
        if serve == 5 {
            paid += Double.random(in: 20.0...40.0)
            let serveFavor = Int.random(in: 1...10)
            let TipAmout = Double.random(in: 0.1...0.25)
            if serveFavor <= 7 {
                cook()
                paid += paid*TipAmout
            }
            serve -= 5
            Ch1ps += paid
            paid -= paid
        } else {
            if serve >= 5 {
                paid += 0
            }
        } 
    }
    func randonPlace(){
        xPos = Double.random(in: 50...360)
        yPos = Double.random(in: 50...750)
    }
}
#Preview {
    Kitchen()
}
