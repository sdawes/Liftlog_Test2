//
//  Exercise.swift
//  Liftlog_Test2
//
//  Created by Stephen Dawes on 25/01/2025.
//

import SwiftUI
import SwiftData

@Model
class Exercise {
    var name: String
    var category: String
    var notes: String

    init(name: String, category: String, notes: String) {
        self.name = name
        self.category = category
        self.notes = notes
    }
}