//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by  Adam-James  Cooper on 2024-04-09.
//

import SwiftData
import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: toDoItem.self)
        }
    }
}
