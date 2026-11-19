//
//  MoneyTrackerApp.swift
//  MoneyTracker
//
//  Created by evan on 19/11/26.
//

import SwiftUI

@main
struct MoneyTrackerApp: App {
    @State private var container = AppContainer()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(container)
        }
    }
}
