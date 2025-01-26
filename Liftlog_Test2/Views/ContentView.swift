//
//  ContentView.swift
//  Liftlog_Test2
//
//  Created by Stephen Dawes on 25/01/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var exercises: [Exercise]

    var body: some View {
        NavigationStack {
            List {
                ForEach(exercises) { exercise in
                    Text(exercise.name)
                    Text(exercise.category)
                    Text(exercise.notes)
                }
            }
            .navigationTitle("Exercises")
            .toolbar {
                Button("Add Samples", action: addSamples)
            }
        }
    }

    func addSamples() {
        let sampleExercises = [
            Exercise(name: "Squat", category: "Legs", notes: "Lower body exercise"),
            Exercise(name: "Bench Press", category: "Chest", notes: "Upper body exercise"),
            Exercise(name: "Deadlift", category: "Back", notes: "Lower body exercise")
        ]
        sampleExercises.forEach { modelContext.insert($0) }
    }
    
    init() {
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}

#Preview {
    ContentView()
}
