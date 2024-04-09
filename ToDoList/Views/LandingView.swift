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
                    
                    Label(
                        title: {
                            Text("Study for Chemistry Quiz")
                        }, icon: { Image(systemName: "circle") }
                    )
                    Label(
                        title: {
                            Text("Finish Computer Science")
                        }, icon: { Image(systemName: "circle") }
                    )
                    Label(
                        title: {
                            Text("Run in circles")
                        }, icon: { Image(systemName: "circle") }
                    )
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
