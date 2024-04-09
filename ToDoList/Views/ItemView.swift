//
//  ItemView.swift
//  ToDoList
//
//  Created by  Adam-James  Cooper on 2024-04-09.
//

import SwiftUI


struct ItemView: View {

    let title: String
    let done: Bool

    var body: some View {
        Label(
            title: {
                Text(title)
            }, icon: {
                Image(systemName: done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}

#Preview {
    ItemView(title: "Have a nap", done: false)
}
