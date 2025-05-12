//
//  MainFloor.swift
//  AaronCortezSalgado
//
//  Created by AARON CORTEZ SALGADO on 4/1/25.
//

import SwiftUI
import Combine
struct MainFloor: View {
    @State var timer: Timer.TimerPublisher = Timer.publish(every: 1, on: .main, in: .common)
    @State var connectedtimer: Cancellable? = nil
    @State var SecondElapsed = 0
    @State var SecondsUntil = 60
   
    @State var show = true
    @State var show2 = false
    var body: some View {
        ZStack{
            
            Image("MAIN")
                .resizable()
                .background(Color.black)
            VStack{
                //                Text("\(SecondElapsed)")
                NavigationLink{
                    Kitchen()
                }label: {
                    Text("kitchen")
                }
                NavigationLink{
                    SecondFloor()
                }label: {
                    Text("second Floor")
                }
                NavigationLink{
                    StatView(Numberinput: "0")
                }label: {
                    Text("Your Piggy Bank")
                }
            }
        }
        .onAppear(){
            self.instant()
        }.onDisappear(){
        }.onReceive(timer) { _ in
            self.SecondElapsed += 1
            isTimerDone()
        }
    }
    func instant(){
        self.timer = Timer.publish(every: 1, on: .main, in: .common)
        self.connectedtimer = self.timer.connect()
        return
    }
    func isTimerDone(){
        if SecondElapsed >= SecondsUntil {
//            print("worked")
            
            
            self.instant()
        }
    }
}
    
#Preview {
    MainFloor()
}
