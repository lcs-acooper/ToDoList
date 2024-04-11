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
    @Query var todos: [toDoItem]
    
    //MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)

                    }
                    .onDelete(perform: removeRows)
                }
                .searchable(text: $searchText)
                
                
                HStack {
                    TextField("Enter a to-do item", text:
                                $newItemDecription)
                    
                    Button("ADD") {
                        // Add the new to-do Item
                        createToDo(withTitle: newItemDecription)
                        newItemDecription = ""
                        
                    }
                    .font(.caption)
                    .disabled(newItemDecription.isEmpty == true)
                }
                .padding(20)
            }
            .navigationTitle("To Do")
            .onAppear {
                printCommandToOpenDatabaseFile()
            }
        }
    }
    
    // MARK: Functions
    func createToDo(withTitle title: String) {
        
        //Crate the new to-do item instance
        let todo = toDoItem(title: title, done: false)
        
        // Use the model context to insert the new to-do
        modelContext.insert(todo)
    }
    
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
}


#Preview {
    LandingView()
        .modelContainer(toDoItem.preview)
}

