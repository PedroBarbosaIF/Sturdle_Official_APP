//
//  PomodoroView.swift
//  Sturdle_Official_APP
//
//  Created by found on 27/02/25.
//

import SwiftUI

struct PomodoroView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Learning, focus and no suffer")
                .bold()
                .font(.system(size: 25))
                .foregroundColor(.black)
            Text("Has it ever happened to spending hours studying and, in the end, feeling like you didn't achieve anything? Or focus so much that your mind just stops? The Pomodoro Method could be the solution to this.  Created by Francesco Cirillo in the 80s, this method works like this:")
              .font(Font.custom("Roboto", size: 17))
              .foregroundColor(.black)
              .frame(width: 400, height: 165, alignment: .topLeading)
            
            HStack{
                Image(systemName: "clock")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 169, height: 169)
                  .foregroundStyle(.blueSturdle.gradient)
                  .clipped()
                Text("Choose a task to focus on. Set a timer for 25 minutes and work without interruptions. When the time is up, take a 5-minute break to rest. Repeat this cycle 4 times and then take a longer break of 15 to 30 minutes.")
                  .font(Font.custom("Roboto", size: 17))
                  .foregroundColor(.black)
                  .frame(width: 211, alignment: .topLeading)
            }
            
            Text("This system works because it keeps the brain focused without overloading it.\n\n Taking frequent breaks prevents mental fatigue and helps you stay productive for longer. If 25 minutes seems too much or too little, you can adjust as needed.")
              .font(Font.custom("Roboto", size: 17))
              .foregroundColor(.black)
              .frame(width: 395, height: 180, alignment: .topLeading)
            
        }
        
    }
}

#Preview {
    PomodoroView()
}
