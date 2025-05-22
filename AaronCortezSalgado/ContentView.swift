//
//  ContentView.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 4/1/25.
//

import SwiftUI
import Combine
struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Rectangle()
                    .frame(width: 500, height: 810)
                    .foregroundStyle(Color.black)
                Rectangle()
                    .frame(width: 400, height: 810)
                    .foregroundStyle(Color.myrut)
                    .background(Color.black)
            VStack {
                
                Text("Debt Breaker")
                    .foregroundStyle(Color.myyul)
                    .font(. system(size: 60))
                    .bold()
                Spacer()
                ZStack{
                    Rectangle()
                        .frame(width: 210, height: 60)
                        .foregroundStyle(Color.myhel)
                    Rectangle()
                        .frame(width: 200, height: 50)
                        .foregroundStyle(Color.mycol)
                    NavigationLink{
                        INFO()
                    }label: {
                        Text("info")
                    }
                    .font(. system(size: 35))
                    .colorMultiply(Color.myrut)
                    .frame(width: 200, height: 50)
                    .bold()
                }
                ZStack{
                    Rectangle()
                        .frame(width: 210, height: 60)
                        .foregroundStyle(Color.myhel)
                    Rectangle()
                        .frame(width: 200, height: 50)
                        .foregroundStyle(Color.mycol)
                    NavigationLink{
                        MainFloor()
                    } label: {
                        Text("Get to work")
                    }
                    .font(. system(size: 35))
                    .colorMultiply(Color.myrut)
                    .frame(width: 200, height: 50)
                    .bold()
                }
            }
                
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
