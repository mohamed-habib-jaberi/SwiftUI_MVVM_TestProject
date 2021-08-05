//
//  TodoListManager.swift
//  ListTestProject
//
//  Created by eidd5180 on 05/08/2021.
//

import Foundation

class TodoListManager: ObservableObject {

    @Published var items: [ Item]  = [Item(id: UUID(), name: "First"),
                                      Item(id: UUID(), name: "second"),
                                      Item(id: UUID(), name: "third") ]
    init(){
        // get my data set to my items array
    }

    func move(indices: IndexSet, newOffset: Int )  {
        items.move(fromOffsets: indices, toOffset: newOffset)
    }

    func addItem() {
        items.append(Item(id: UUID(), name: "newly added"))
    }

    func deleteItem(at indexSet: IndexSet)  {
        for index in indexSet {
            items.remove(at: index)
        }

    }
}
