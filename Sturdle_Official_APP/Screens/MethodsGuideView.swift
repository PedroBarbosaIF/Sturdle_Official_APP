//
//  MethodsGuideView.swift
//  Sturdle_Official_APP
//
//  Created by found on 27/02/25.
//

import SwiftUI

struct MethodsGuideView: View {
    var body: some View {
        
        TabView{
            PomodoroView()
                .tabItem{
                    Text("Pomodoro")
                }
            
            FlashcardsView()
                .tabItem{
                    Text("Flashcards")
                }
            
            MentalMapView()
                .tabItem{
                    Text("Mental Map")
                }
        }
        
    }
}

#Preview {
    MethodsGuideView()
}
