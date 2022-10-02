//
//  SwiftUISimpleGameApp.swift
//  SwiftUISimpleGame
//
//  Created by Dmitry Kononov on 2.10.22.
//

import SwiftUI

@main
struct SwiftUISimpleGameApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
