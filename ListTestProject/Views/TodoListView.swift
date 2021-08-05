//
//  ContentView.swift
//  ListTestProject
//
//  Created by eidd5180 on 05/08/2021.
//

import SwiftUI


struct TodoListView: View {
    
    @ObservedObject var todoListManager: TodoListManager
    
    var body: some View {
        
        NavigationView {
            
            List {
                ForEach(todoListManager.items){ item in
                    NavigationLink(
                        destination:  Text("Destination \(item.name)"),
                        label: {
                            Text(item.name)
                        })
                }
                .onDelete(perform: { indexSet in
                    todoListManager.deleteItem(at: indexSet)
                })
                .onMove(perform: { indices, newOffset in
                    todoListManager.move(indices: indices, newOffset: newOffset)
                })
            }
            
            .navigationBarTitleDisplayMode(.large)
            .navigationBarTitle("Todo's")
            
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    EditButton()
                    Button(action: {
                        todoListManager.addItem()
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TodoListView(todoListManager: TodoListManager())
            TodoListView(todoListManager: TodoListManager())
        }
    }
}
