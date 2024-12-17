//
//  ContentView.swift
//  DatePlanner
//
//  Created by Oleksii on 17.12.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var eventData = EventData()
    var body: some View {
        NavigationView {
            EventList()
            Text("Select an event")
                .foregroundStyle(.secondary)
        }
        .environmentObject(eventData)
    }
}

#Preview {
    ContentView()
}
