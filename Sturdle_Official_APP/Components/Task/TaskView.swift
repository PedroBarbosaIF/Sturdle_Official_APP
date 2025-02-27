//
//  NewTaskView.swift
//  teste-Sturdle
//
//  Created by found on 21/02/25.
//

import SwiftUI
import SwiftData

struct TaskView: View {
    @State var task: Task
    @Environment(\.modelContext) var modelContext

//    init(task: Task) {
//        self.task = task
//    }
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(
                    .blueSturdle
                        .shadow(.inner(color: .black.opacity(0.35), radius: 10, x: 1, y: -7))
                        .shadow(.drop(radius: 5, x: 5, y: 5))
                )
                .frame(width: 392, height: 67)
                .cornerRadius(15)
            
            HStack{
                Spacer()
                    .frame(width: 23)
                
                Button{
                    task.isDone.toggle()
                }label: {
                    Image(systemName: task.isDone ? "checkmark.square" : "square")
                        .resizable()
                        .foregroundStyle(.white )
                        .padding(.horizontal, 0)
                        .padding(.top, 0)
                        .padding(.bottom, 4.10921)
                        .frame(width: 28, height: 32)
                }
                VStack(alignment: .leading){
                    Text(task.name)
                        .font(Font.custom("Inter", size: 20))
                        .foregroundColor(.white)
                        .frame(width: 280, height: 15, alignment: .topLeading)
                    Text(formattedDate(task.deadline))
                        .font(Font.custom("Inter", size: 15))
                        .foregroundColor(.white.opacity(0.5))
                }
                
                Button{
                    modelContext.delete(task)
                }label: {
                    Image(systemName: "trash.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundStyle(.white)
                        .frame(width: 30, height: 30)
                }
                
                Spacer()
                
            }
        }
    }
}

func fakeTask() -> Task{
    return Task(name: "TESTE MUITO incrivl",
                deadline: .now,
                isDone: false,
                routine: fakeRoutine())
}

func fakeRoutine() -> Routine{
    return Routine(name: "bolsonaro")
}

#Preview {
    TaskView(task: fakeTask())
}
