//
//  ContentView.swift
//  ToDoList
//
//  Created by  Adam-James  Cooper on 2024-04-09.
//

import SwiftData
import SwiftUI

struct LandingView: View {
    
    //MARK: Stored properties
    
    // The item currently being added
    @State var newItemDecription: String = ""
    
    //The search text
    @State var searchText = ""
    
    // Access the model context requited to do additions, deletions, etc
    @Environment(\.modelContext) var modelContext
    
    //The list of to-do items
    @State var todos: [toDoItem] = exampleItems
    
    //MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List($todos) { $todo in
                    
                    ItemView(currentItem: $todo)
                    //Delete a to=do item
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                        }
                    //Tap to mark as done
                        .onTapGesture {
                            todo.done.toggle()
                        }
                    }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item", text:
                        $newItemDecription)
                    
                    Button("ADD") {
                        // Add the new to-do Item
                        createToDo(withTitle: newItemDecription)
                        
                    }
                    .font(.caption)
                    .disabled(newItemDecription.isEmpty == true)
                }
                    .padding(20)
            }
            .navigationTitle("To Do")
        }
    }
    
    // MARK: Functions
    func createToDo(withTitle title: String) {
        
        //Crate the new to-do item instance
        let todo = toDoItem(title: title, done: false)
        
        // Append to the array
        todos.append(todo)
    }
    
    func delete(_ todo: toDoItem) {
        
        //Remove the provided to-do item from arrau
        todos.removeAll() { currentItem in currentItem.id == todo.id}
    }
}


//#Preview {
//    LandingView()
//}

