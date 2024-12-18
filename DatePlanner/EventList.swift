//
//  EventList.swift
//  DatePlanner
//
//  Created by Oleksii on 17.12.2024.
//

import SwiftUI

struct EventList: View {
    
    @EnvironmentObject var eventData: EventData
    @State private var isAddingNewEvent = false
    @State private var newEvent = Event()
    
    var body: some View {
        List {
            ForEach(Period.allCases) { period in
                if !eventData.sortedEvents(period: period).isEmpty {
                    Section {
                        ForEach(eventData.sortedEvents(period: period)) { $event in
                            NavigationLink {
                                EventEditor(event: event)
                            } label: {
                                EventRow(event: event)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    EventList()
}
