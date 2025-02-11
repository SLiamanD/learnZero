//
//  LearnZeroApp.swift
//  Shared
//
//  Created by sliamand on 27.07.2022.
//

import SwiftUI

@main
struct LearnZeroApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
