//
//  ContentView.swift
//  ToDoList
//
//  Created by  Adam-James  Cooper on 2024-04-09.
//

import SwiftUI

struct LandingView: View {
    
    //MARK: Stored properties
    
    // The item currently being added
    @State var newItemDecription: String = ""
    
    //The search text
    @State var searchText = ""
    
    //Mark: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List {
                    
                    ItemView(title: "Study for Chemistry", done: false)
                    ItemView(title: "Finish Computer Science", done: true)
                    ItemView(title: "Go run in circles", done: false)
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item", text:
                        $newItemDecription)
                    
                    Button("ADD") {
                        // Add the new to-do Item
                        
                    }
                    .font(.caption)
                }
                    .padding(20)
            }
            .navigationTitle("To Do")
        }
    }
}
#Preview {
    LandingView()
}

struct ItemView: View {

    let title: String
    let done: Bool

    var body: some View {
        Label(
            title: {
                Text(title)
            }, icon: {
                if done == true {
                    Image(systemName: "checkmark.circle")
                } else {
                    Image(systemName: "circle")
                }
            }
        )
    }
}
