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
    @State var debt = 10000000000.0
    var body: some View {
        NavigationView{
            VStack{
                Text("\(SecondElapsed)")
               
                NavigationLink{
                    Kitchen()
                }label: {
                    Text("kitchen")
                }
                NavigationLink{
                    
                }label: {
                    Text("second Floor")
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
