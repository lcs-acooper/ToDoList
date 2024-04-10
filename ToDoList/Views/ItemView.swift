//
//  ItemView.swift
//  ToDoList
//
//  Created by  Adam-James  Cooper on 2024-04-09.
//

import SwiftUI


struct ItemView: View {

    @Binding var currentItem: toDoItem
    
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
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
    List {
        ItemView(currentItem: Binding.constant(firstItem))
        ItemView(currentItem: Binding.constant(secondItem))
    }
}

