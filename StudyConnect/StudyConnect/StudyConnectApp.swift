//
//  StudyConnectApp.swift
//  StudyConnect
//
//  Created by Akhil Gubbala on 03/04/25.
//

import SwiftUI
import SwiftData

@main
struct StudyConnectApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            SignInView()
        }
        .modelContainer(sharedModelContainer)
    }
}
