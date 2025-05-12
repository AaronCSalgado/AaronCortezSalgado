//
//  SecondFloor.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 4/1/25.
//

import SwiftUI
import Combine
struct SecondFloor: View {
    var body: some View {
//        NavigationView{
            ZStack{
                Image("SECON")
                    .resizable()
                    .background(Color.black)
                VStack{
                    HStack{
                        NavigationLink{
                            rouletteTable( Numberinput: "0")
                        }label: {
                            Text("Roulette Table")
                        }
                    }
                    HStack{
                        NavigationLink{
                            Slots( Numberinput: "0")
                        }label: {
                            Text("Slots")
                        }
                    }
                }
//            }
        }
    }
}

#Preview {
    SecondFloor()
}
