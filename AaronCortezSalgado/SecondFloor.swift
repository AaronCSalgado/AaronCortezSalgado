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
                VStack{
                    HStack{
                        NavigationLink{
                            rouletteTable( Numberinput: "0")
                        }label: {
                            Text("Roulette Table")
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
