//
//  RoutineView.swift
//  teste-Sturdle
//
//  Created by found on 11/02/25.
//

import SwiftUI
import SwiftData

struct RoutineView: View {
    
    @State var routine: Routine
    @Query var tasks: [Task]
    
    @Environment(\.modelContext) var modelContext
    
//    init(routine: Routine) {
//        self.routine = routine
//    }
        
    var body: some View {
        ZStack{
//            Rectangle()
//                .foregroundColor(.clear)
//                .frame(width: 392, height: 162)
//                .background(.blueSturdle)
//                .cornerRadius(24)
//                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            
            Rectangle()
                .foregroundStyle(
                    .blueSturdle
                        .shadow(.inner(color: .black.opacity(0.35), radius: 15, x: 10, y: -10))
                        .shadow(.drop(radius: 5, x: 5, y: 5))
                )
                .frame(width: 392, height: 162)
                .cornerRadius(24)
            
            VStack{
                HStack{
                    Text(routine.name)
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 200, height: 28, alignment: .leading)
                        
                    Spacer()
                        .frame(width: 140, height: 10)
                    
                    
                    Button{
                        modelContext.delete(routine)
                    }label: {
                        Image(systemName: "trash.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .foregroundStyle(.white)
                            .frame(width: 30, height: 30)
                    }
                }
                
                Spacer()
                    .frame(width: 10, height: 60)
                
                HStack{
                    Text("\(tasks.filter { $0.routine.id == routine.id }.filter { $0.isDone }.count)/\(tasks.filter { $0.routine.id == routine.id }.count)")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 113, height: 28, alignment: .leading)
                    Spacer()
                        .frame(width: 240)
                    
                }
                ZStack(alignment: .leading){
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 353, height: 8)
                        .background(.white.opacity(0.6))
                        .cornerRadius(24)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: progressBarNumber(tasks: tasks, routine: routine), height: 8)
                        .background(.white)
                        .cornerRadius(24)
                        
//                        Spacer()
//                            .frame(width: 350, height: 1)
                    
                }
            }
        }
    }
}

#Preview {
    
    RoutineView(routine: .init(name: "nomeDaRoutina"))
}
