//
//  Liftlog_Test2App.swift
//  Liftlog_Test2
//
//  Created by Stephen Dawes on 25/01/2025.
//

import SwiftUI
import SwiftData

@main
struct Liftlog_Test2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Exercise.self)
    }
}
