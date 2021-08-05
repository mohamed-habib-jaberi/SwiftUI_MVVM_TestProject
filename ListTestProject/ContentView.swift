//
//  ContentView.swift
//  ListTestProject
//
//  Created by eidd5180 on 05/08/2021.
//

import SwiftUI

struct Item: Identifiable {
    var id: UUID
    var name: String
}

struct ContentView: View {

   @State var items = [Item(id: UUID(), name: "First"),
Item(id: UUID(), name: "second"),
Item(id: UUID(), name: "third")
    ]

    var body: some View {

        NavigationView {

            List {
                ForEach(items){ item in
                    NavigationLink(
                        destination:  Text("Destination \(item.name)"),
                        label: {
                            Text(item.name)
                        })
                }
                .onDelete(perform: { indexSet in
                    for index in indexSet {
                        items.remove(at: index)
                    }
                })
                .onMove(perform: { indices, newOffset in
                    items.move(fromOffsets: indices, toOffset: newOffset)
                })
            }

            .navigationBarTitleDisplayMode(.large)
            .navigationBarTitle("Todo's")

            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    EditButton()
                    Button(action: {
                        items.append(Item(id: UUID(), name: "newly added"))
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
            ContentView()
            ContentView()
        }
    }
}
