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
                    
                }
                .searchable(text: $searchText)
                
                HStack { }
                    .padding(20)
            }
            .navigationTitle("To Do")
        }
    }
}
#Preview {
    LandingView()
}
