//
//  ContentView.swift
//  MoneyTracker
//
//  Created by evan on 19/11/26.
//

import MoneyTrackerDesignSystem
import SwiftUI

struct ContentView: View {
    @Environment(AppContainer.self) private var container

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, evan!")
        }
        .padding(Spacing.md)
    }
}

#Preview {
    ContentView()
        .environment(AppContainer())
}
