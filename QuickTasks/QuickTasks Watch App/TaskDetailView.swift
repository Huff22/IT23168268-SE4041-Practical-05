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
        VStack(spacing: 8) {
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .font(.system(size: 40))
                .foregroundStyle(task.completed ? .green : .gray)

            Text(task.title)
                .font(.headline)
                .multilineTextAlignment(.center)

            Text(task.completed ? "Completed" : "Pending")
                .font(.caption)
                .foregroundStyle(task.completed ? .green : .secondary)

            // Part G: Display Category
            Text(task.category)
                .font(.caption2)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Capsule().fill(Color.gray.opacity(0.3)))
        }
    }
}

#Preview {
    TaskDetailView(task: TaskItem(title: "Morning Walk", completed: true, category: "Health"))
}
