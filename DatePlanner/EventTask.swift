//
//  EventTask.swift
//  DatePlanner
//
//  Created by Oleksii on 17.12.2024.
//

import Foundation

struct Event: Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isCompleted = false
    var isNew = false
}
