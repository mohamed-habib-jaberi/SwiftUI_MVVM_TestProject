//
//  ListTestProjectApp.swift
//  ListTestProject
//
//  Created by eidd5180 on 05/08/2021.
//

import SwiftUI

@main
struct ListTestProjectApp: App {

@StateObject var todoListManager = TodoListManager()

    var body: some Scene {
        WindowGroup {
            TodoListView(todoListManager: todoListManager)
        }
    }
}
