//
//  RoutinesView.swift
//  teste-Sturdle
//
//  Created by found on 07/02/25.
//

import SwiftUI
import SwiftData

struct RoutinesView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var modelContext
    @Query var routines: [Routine]
    @State var isShowingSheet = false
    @State var doesHaveRoutine = false
    @State var search: String = ""
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    HStack{
                        Spacer()
                            .frame(width: 370)
                        NavigationLink(destination: MethodsGuideView(), label: {
                            Text("?")
                                .bold()
                                .font(.system(size: 30))
                                .foregroundStyle(.black)
                        })
                    }
                    HStack{
                        Text("Tasks")
                            .bold()
                        
                        Spacer()
                            .frame(width: 320)
                        
                        Button{
                            isShowingSheet = true
                        }label: {
                            Text("+")
                                .font(Font.custom("Roboto", size: 40))
                                .foregroundColor(.black)
                        }
                    }
                    
                    if routines.count == 0{
                        HStack(alignment: .center, spacing: 10) {
                            Text("No routines found")
                                .bold()
                                .font(.system(size: 20))
                                .foregroundStyle(.gray)
                        }
                        
                    }
                    ScrollView{
                        ForEach(routines){ routine in
                            NavigationLink(destination: TasksView(routine: routine)){
                                RoutineView(routine: routine)
                            }
                        }
                    }
                    
                    Spacer()
                    
                }
            }
            .navigationTitle("Routines")
            .sheet(isPresented: $isShowingSheet){
                AddRoutineView(isShowingSheet: $isShowingSheet, doesHaveRoutine: $doesHaveRoutine)
                    .presentationDetents([.medium])
            }
//            .onChange(of: search){
//                if
//            }
        }
    }
}

#Preview {
    RoutinesView()
}
