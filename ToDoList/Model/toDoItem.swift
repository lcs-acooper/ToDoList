//
//  toDoItem.swift
//  ToDoList
//
//  Created by  Adam-James  Cooper on 2024-04-09.
//

import SwiftData

@Model
class toDoItem: Identifiable {
    var title: String
    var done: Bool
    
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}

extension toDoItem {
    
    @MainActor
    static var preview: ModelContainer {
        
        let container = try! ModelContainer(
            for: toDoItem.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
        )
        
        // Add mock data
        container.mainContext.insert(
            toDoItem(title: "Go for a walk", done: false)
        )
        container.mainContext.insert(
            toDoItem(title: "Have a nap", done: true)
        )
        container.mainContext.insert(
            toDoItem(title: "Call mom", done: false)
        )

        return container
    }
}

extension toDoItem {
    
    static let someItem = toDoItem(title: "Read a book", done: true)
    static let anotherItem = toDoItem(title: "Make a sandwich", done: false)

}
