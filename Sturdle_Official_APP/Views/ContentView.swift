//
//  ContentView.swift
//  Sturdle_Official_APP
//
//  Created by found on 26/02/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var modelContainer: ModelContainer = {
        let schema = Schema([
            Task.self,
            Routine.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some View {
        LoadingView()
            .modelContainer(modelContainer)
    }
}
