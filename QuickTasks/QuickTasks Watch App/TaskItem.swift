//
//  TaskItem.swift
//  QuickTasks
//
//  Created by Hafsa Faleel on 2026-10-09.
//

import Foundation

struct TaskItem: Identifiable {

    let id = UUID()

    var title: String
    var completed: Bool
}
