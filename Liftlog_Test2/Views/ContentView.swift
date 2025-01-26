//
//  ContentView.swift
//  Liftlog_Test2
//
//  Created by Stephen Dawes on 25/01/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query var exercises: [Exercise]

    var body: some View {
        NavigationStack {
            List {
                ForEach(exercises) { exercise in
                    HStack(spacing: 30) {
                        Text(exercise.name)
                        .font(.subheadline)
                        Text(exercise.category)
                        .font(.subheadline)
                    }
                    Text(exercise.notes)
                    .font(.caption)
                }
            }
            .navigationTitle("Exercises")
        }
    }
    
    init() {
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}

#Preview {
    ContentView()
}
