//
//  toDoItem.swift
//  ToDoList
//
//  Created by  Adam-James  Cooper on 2024-04-09.
//

import Foundation

struct toDoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem = toDoItem(title: "Study for chemistry", done: false)

let secondItem = toDoItem(title: "Do Computer Science", done: true)

let thirdItem = toDoItem(title: "Run in Circles", done: false)




let exampleItems = [

    toDoItem(title: "Study for chemistry", done: false)


]
