//
//  ItemView.swift
//  ToDoList
//
//  Created by  Adam-James  Cooper on 2024-04-09.
//
import SwiftData
import SwiftUI


struct ItemView: View {

    @Bindable var currentItem: toDoItem
    
    var body: some View {
        Label(
            title: {
                TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                // Tap to mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            }
        )
    }
}

#Preview {
    
    let container = toDoItem.preview
    
    return List {
        ItemView(currentItem: toDoItem.someItem)
        ItemView(currentItem: toDoItem.anotherItem)
    }
    .modelContainer(container)
    
}
