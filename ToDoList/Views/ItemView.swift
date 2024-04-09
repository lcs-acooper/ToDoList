//
//  ItemView.swift
//  ToDoList
//
//  Created by  Adam-James  Cooper on 2024-04-09.
//

import SwiftUI


struct ItemView: View {

    let currentItem: toDoItem
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}

#Preview {
    List {
        ItemView(currentItem: firstItem)
        ItemView(currentItem: secondItem)
    }
}

