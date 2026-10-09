//
//  ContentView.swift
//  QuickTasks Watch App
//
//  Created by Hafsa Faleel on 2026-10-09.
//

import SwiftUI

struct ContentView: View {

    @State private var tasks = [

        TaskItem(
            title: "Morning Walk",
            completed: true
        ),

        TaskItem(
            title: "Drink Water",
            completed: false
        ),

        TaskItem(
            title: "Read Notes",
            completed: false
        )
    ]

    var body: some View {

        NavigationStack {

            List(tasks) { task in

                NavigationLink {

                    TaskDetailView(task: task)

                } label: {

                    HStack {

                        Image(
                            systemName:
                                task.completed
                                ? "checkmark.circle.fill"
                                : "circle"
                        )

                        Text(task.title)
                    }
                }
            }
            .navigationTitle("Tasks")
        }
    }
}

#Preview {
    ContentView()
}
