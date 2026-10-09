//
//  ContentView.swift
//  QuickTasks Watch App
//
//  Created by Hafsa Faleel on 2026-10-09.
//

import SwiftUI

struct ContentView: View {
    // Part B: Minimum 4 initial tasks + Part G: Option C (Category)
    @State private var tasks = [
        TaskItem(title: "Morning Walk", completed: true, category: "Health"),
        TaskItem(title: "Drink Water", completed: false, category: "Health"),
        TaskItem(title: "Read Notes", completed: false, category: "Study"),
        TaskItem(title: "Call Home", completed: true, category: "Personal")
    ]
    
    // Part E: Count completed tasks
    private var completedCount: Int {
        tasks.filter { $0.completed }.count
    }

    var body: some View {
        NavigationStack {
            VStack {
                // Part C & E: Header summary
                Text("\(completedCount) / \(tasks.count) Completed")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                List {
                    ForEach($tasks) { $task in
                        HStack {
                            // Part D: Tap icon to toggle completion
                            Button {
                                task.completed.toggle()
                            } label: {
                                Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                                    .foregroundStyle(task.completed ? .green : .gray)
                            }
                            .buttonStyle(.plain)

                            // Part F: Clean NavigationLink to open details
                            NavigationLink(destination: TaskDetailView(task: task)) {
                                Text(task.title)
                                    .strikethrough(task.completed)
                            }
                        }
                    }

                    // Part G: Option A - Reset Tasks Button
                    Button(role: .destructive) {
                        for index in tasks.indices {
                            tasks[index].completed = false
                        }
                    } label: {
                        Label("Reset All", systemImage: "arrow.counterclockwise")
                    }
                }
            }
            .navigationTitle("Quick Tasks")
        }
    }
}

#Preview {
    ContentView()
}
