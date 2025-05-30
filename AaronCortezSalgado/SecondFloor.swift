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
                Rectangle()
                .frame(width: 402, height: 800)
                .background(Color.black)
                Image("SECON")
                    .resizable()
                    .frame(width:410, height:500)
                    
                
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
        }
            
        
    }
}

#Preview {
    SecondFloor()
}
