//
//  FindFoodFour.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 4/16/25.
//

import SwiftUI

struct FindFoodFour: View {
    @State var immage =  ["fries","salad","steak","burger","fried chicken","onion rings","shrimps"]
    @State var xPos = 0.0
    @State var yPos = 0.0

    
    var body: some View {
        Image(immage[0])
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 65, height: 65)
            .position(x: xPos, y: yPos)

            .onAppear{
                randonPlace()
                immage.shuffle()
            }
        
    }
    func randonPlace(){
        xPos = Double.random(in: 50...360)
        yPos = Double.random(in: 50...750)
    }
}

#Preview {
    FindFoodFour()
}
