//
//  TaskDetailView.swift
//  QuickTasks
//
//  Created by Hafsa Faleel on 2026-10-09.
//

import SwiftUI

struct TaskDetailView: View {

    let task: TaskItem

    var body: some View {

        VStack(spacing: 10) {

            Image(
                systemName:
                    task.completed
                    ? "checkmark.circle.fill"
                    : "circle"
            )
            .font(.largeTitle)

            Text(task.title)
                .font(.headline)
                .multilineTextAlignment(.center)

            Text(
                task.completed
                ? "Completed"
                : "Pending"
            )
            .font(.caption)
        }
    }
}
