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
    
    private var completedCount: Int {
        tasks.filter { $0.completed }.count
    }

    var body: some View {
        let completedCount =
            tasks.filter { $0.completed }.count

        NavigationStack {

            VStack {

                Text(
                    "\(completedCount)/\(tasks.count) Completed"
                )
                .font(.caption)

                List(tasks.indices, id: \.self) { index in

                    Button {

                        tasks[index].completed.toggle()

                    } label: {

                        HStack {

                            Image(
                                systemName:
                                    tasks[index].completed
                                    ? "checkmark.circle.fill"
                                    : "circle"
                            )

                            Text(tasks[index].title)
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
